#include "../h/Riscv.hpp"
#include "../h/Scheduler.hpp"
#include "../h/KSemaphore.hpp"

KSemaphore::KSemaphore(int val)
    : val(val), blocked() {}

KSemaphore::~KSemaphore() {
    TCB* tcb;
    while ((tcb = blocked.pop())) {
        tcb->backFromClosedSem = true;
        Scheduler::put(tcb);
    }
}

void KSemaphore::block() {
    TCB::running->setState(TCB::SUSPENDED);
    blocked.push(TCB::running);
    TCB::dispatch();
}

void KSemaphore::unblock() {
    TCB* tcb = blocked.pop();
    if (tcb) {
        tcb->backFromClosedSem = false;
        Scheduler::put(tcb);
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
    if (TCB::running->backFromClosedSem)
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

