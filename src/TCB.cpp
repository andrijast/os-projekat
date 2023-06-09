#include "../h/Riscv.hpp"
#include "../h/Scheduler.hpp"
#include "../h/KConsole.hpp"
#include "../h/TCB.hpp"

TCB* TCB::running = nullptr;
uint64 TCB::timeSliceCounter = 0;

void TCB::initialize() {

}

TCB::TCB(Body body, void *args, void* stack_space, uint64 timeSlice):
        body(body), args(args),
        stack_space(stack_space),
        timeSlice(timeSlice),
        context({
            (uint64) ((uint8*)stack_space + DEFAULT_STACK_SIZE),
            (uint64) TCB::runner
        }) {}

TCB::~TCB() {
    MemoryAllocator::kfree(stack_space);
}

void TCB::start() {
    Scheduler::put(this);
}

int thread_exit(); // syscall_c
void TCB::runner() {
    Riscv::popSppSpie();
    // user space
    running->body(running->args);
    thread_exit();
}

void TCB::dispatch() {
    TCB* old = running;
    if (old->state == RUNNING)
        Scheduler::put(old);
    running = Scheduler::get();
    running->setState(RUNNING);

    timeSliceCounter = 0;
    Riscv::setPrivilegeLevel();
    contextSwitch(&old->context, &running->context);
}

void TCB::timerInterrupt() {
    timeSliceCounter++;
    if (timeSliceCounter >= running->timeSlice) {
        dispatch();
    }
}

void *TCB::operator new(size_t size) {
    return MemoryAllocator::kmalloc(size);
}
void TCB::operator delete(void *ptr) {
    MemoryAllocator::kfree(ptr);
}

// ----- SYSTEM CALLS -----

void TCB::sc_thread_exit() {
    running->setState(FINISHED);
    dispatch();
    Riscv::w_a0(0);
}

void TCB::sc_thread_dispatch() {
    dispatch();
}

void TCB::sc_time_sleep() {
    uint64 time = Riscv::r_a(1);
    running->setSleepThreshold(time + Riscv::totalTime);
    Scheduler::putToSleep(running);
    dispatch();
    Riscv::w_a0(0);
}

void TCB::sc_thread_create() {
    TCB** threadHandle = (TCB**) Riscv::r_a(1);
    Body start_routine = (Body) Riscv::r_a(2);
    void* args = (void*) Riscv::r_a(3);
    void* stack_space = (void*) Riscv::r_a(4);

    TCB *newTCB = new TCB(start_routine, args, stack_space);

    (*threadHandle) = newTCB;

    if (newTCB) {
        newTCB->start();
        Riscv::w_a0(0);
    } else {
        Riscv::w_a0(-1);
    }
}

void TCB::sc_thread_start() {
    TCB* tcb = (TCB*) Riscv::r_a(1);
    if (tcb) {
        tcb->start();
        Riscv::w_a0(0);
    } else {
        Riscv::w_a0(-1);
    }
}

void TCB::sc_thread_build() {
    TCB** threadHandle = (TCB**) Riscv::r_a(1);
    Body start_routine = (Body) Riscv::r_a(2);
    void* args = (void*) Riscv::r_a(3);
    void* stack_space = (void*) Riscv::r_a(4);

    TCB *newTCB = new TCB(start_routine, args, stack_space);

    (*threadHandle) = newTCB;

    if (newTCB) Riscv::w_a0(0);
    else Riscv::w_a0(-1);
}

void TCB::sc_thread_delete() {
    TCB* tcb = (TCB*) Riscv::r_a(1);
    if (tcb) {
        delete tcb;
        Riscv::w_a0(0);
    } else {
        Riscv::w_a0(-1);
    }
}
