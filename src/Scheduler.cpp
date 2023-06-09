#include "../h/Riscv.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/TCBQueue.hpp"
#include "../h/Scheduler.hpp"

TCBQueue Scheduler::ready;
TCBQueue Scheduler::sleeping;

void Scheduler::put(TCB *tcb) {
    tcb->setState(TCB::READY);
    ready.push(tcb);
}

TCB* Scheduler::get() {
    return ready.pop();
}

void Scheduler::putToSleep(TCB* tcb) {
    tcb->setState(TCB::SLEEPING);
    sleeping.insert(tcb);
}

void Scheduler::checkAwake() {
    while (sleeping.front() && Riscv::totalTime >= sleeping.front()->sleepThreshold) {
        Scheduler::put(sleeping.pop());
    }
}
