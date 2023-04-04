#include "../h/Riscv.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/PCBQueue.hpp"
#include "../h/Scheduler.hpp"

PCBQueue Scheduler::ready;
PCBQueue Scheduler::sleeping;

void Scheduler::put(PCB *pcb) {
    pcb->setState(PCB::READY);
    ready.push(pcb);
}

PCB* Scheduler::get() {
    return ready.pop();
}

void Scheduler::putToSleep(PCB* pcb) {
    pcb->setState(PCB::SLEEPING);
    sleeping.insert(pcb);
}

void Scheduler::checkAwake() {
    while (sleeping.front() && Riscv::totalTime >= sleeping.front()->sleepThreshold) {
        Scheduler::put(sleeping.pop());
    }
}
