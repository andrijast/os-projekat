#include "../h/Riscv.hpp"
#include "../h/Scheduler.hpp"
#include "../h/KConsole.hpp"
#include "../h/PCB.hpp"

PCB* PCB::running = nullptr;
uint64 PCB::timeSliceCounter = 0;

void PCB::initialize() {

}

PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice):
        body(body), args(args),
        stack_space(stack_space),
        timeSlice(timeSlice),
        context({
            (uint64) ((uint8*)stack_space + DEFAULT_STACK_SIZE),
            (uint64) PCB::runner
        }) {}

PCB::~PCB() {
    MemoryAllocator::kfree(stack_space);
}

void PCB::start() {
    Scheduler::put(this);
}

int thread_exit(); // syscall_c
void PCB::runner() {
    Riscv::popSppSpie();
    running->body(running->args);
    thread_exit();
}

void PCB::dispatch() {
    PCB* old = running;
    if (old->state == RUNNING)
        Scheduler::put(old);
    running = Scheduler::get();
    running->setState(RUNNING);

    timeSliceCounter = 0;
    Riscv::setPrivilegeLevel();
    contextSwitch(&old->context, &running->context);
}

void PCB::timerInterrupt() {
    timeSliceCounter++;
    if (timeSliceCounter >= running->timeSlice) {
        dispatch();
    }
}

void *PCB::operator new(size_t size) {
    return MemoryAllocator::kmalloc(size);
}
void PCB::operator delete(void *ptr) {
    MemoryAllocator::kfree(ptr);
}

// ----- SYSTEM CALLS -----

void PCB::sc_thread_exit() {
    running->setState(FINISHED);
    dispatch();
    Riscv::w_a0(0);
}

void PCB::sc_thread_dispatch() {
    dispatch();
}

void PCB::sc_time_sleep() {
    uint64 time = Riscv::r_a(1);
    running->setSleepThreshold(time + Riscv::totalTime);
    Scheduler::putToSleep(running);
    dispatch();
    Riscv::w_a0(0);
}

void PCB::sc_thread_create() {
    PCB **threadHandle = (PCB**) Riscv::r_a(1);
    Body start_routine = (Body) Riscv::r_a(2);
    void* args = (void*) Riscv::r_a(3);
    void* stack_space = (void*) Riscv::r_a(4);

    PCB *newPCB = new PCB(start_routine, args, stack_space);

    (*threadHandle) = newPCB;

    if (newPCB) {
        newPCB->start();
        Riscv::w_a0(0);
    } else {
        Riscv::w_a0(-1);
    }
}

void PCB::sc_thread_start() {
    PCB* pcb = (PCB*) Riscv::r_a(1);
    if (pcb) {
        pcb->start();
        Riscv::w_a0(0);
    } else {
        Riscv::w_a0(-1);
    }
}

void PCB::sc_thread_build() {
    PCB** threadHandle = (PCB**) Riscv::r_a(1);
    Body start_routine = (Body) Riscv::r_a(2);
    void* args = (void*) Riscv::r_a(3);
    void* stack_space = (void*) Riscv::r_a(4);

    PCB *newPCB = new PCB(start_routine, args, stack_space);

    (*threadHandle) = newPCB;

    if (newPCB) Riscv::w_a0(0);
    else Riscv::w_a0(-1);
}

void PCB::sc_thread_delete() {
    PCB* pcb = (PCB*) Riscv::r_a(1);
    if (pcb) {
        delete pcb;
        Riscv::w_a0(0);
    } else {
        Riscv::w_a0(-1);
    }
}
