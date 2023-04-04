#include "../h/Riscv.hpp"
#include "../h/Scheduler.hpp"
#include "../h/KSemaphore.hpp"

KSemaphore::KSemaphore(int val)
    : val(val), blocked() {}

KSemaphore::~KSemaphore() {
    PCB* pcb;
    while ((pcb = blocked.pop())) {
        pcb->backFromClosedSem = true;
        Scheduler::put(pcb);
    }
}

void KSemaphore::block() {
    PCB::running->setState(PCB::SUSPENDED);
    blocked.push(PCB::running);
    PCB::dispatch();
}

void KSemaphore::unblock() {
    PCB* pcb = blocked.pop();
    if (pcb) {
        pcb->backFromClosedSem = false;
        Scheduler::put(pcb);
    }
}

uint64 KSemaphore::wait() {
    if (--val < 0)
        block();
    return 0;
}

uint64 KSemaphore::signal() {
    if (++val <= 0)
        unblock();
    return 0;
}

void* KSemaphore::operator new(size_t size) {
    return MemoryAllocator::kmalloc(size);
}
void KSemaphore::operator delete(void* ptr) {
    MemoryAllocator::kfree(ptr);
}


// ----- SYSTEM CALLS -----

void KSemaphore::sc_sem_wait() {
    KSemaphore* kSem = (KSemaphore*) Riscv::r_a(1);
    kSem->wait();
    if (PCB::running->backFromClosedSem)
        Riscv::w_a0(-1);
    else
        Riscv::w_a0(0);
}

void KSemaphore::sc_sem_signal() {
    KSemaphore *kSem = (KSemaphore*) Riscv::r_a(1);
    if (kSem == nullptr) {
        Riscv::w_a0(-1);
    }
    else {
        kSem->signal();
        Riscv::w_a0(0);
    }
}

void KSemaphore::sc_sem_open() {
    KSemaphore** handle = (KSemaphore**) Riscv::r_a(1);
    uint64 val = Riscv::r_a(2);

    KSemaphore* newSem = new KSemaphore((int)val);

    (*handle) = newSem;

    if (!newSem) Riscv::w_a0(-1);
    else Riscv::w_a0(0);
}

void KSemaphore::sc_sem_close() {
    KSemaphore* kSem = (KSemaphore*) Riscv::r_a(1);
    delete kSem;
    Riscv::w_a0(0);
}

