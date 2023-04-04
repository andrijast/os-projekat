#include "../h/Riscv.hpp"
#include "../h/PCB.hpp"
#include "../h/KConsole.hpp"
#include "../h/Scheduler.hpp"
#include "../h/syscall_c.hpp"
#include "../h/Kernel.hpp"

Kernel::State Kernel::state = STARTED;

PCB* Kernel::systemThread = nullptr;
PCB* Kernel::consoleThread = nullptr;
PCB* Kernel::userThread = nullptr;

void Kernel::initialize() {
    Riscv::w_stvec((uint64) Riscv::sroutine);

    PCB::initialize();
    KConsole::initialize();

    systemThread = new PCB(0, 0, 0, 0);
    systemThread->privileged = true;
    PCB::running = systemThread;
    PCB::running->setState(PCB::RUNNING);

    consoleThread = new PCB(KConsole::sendCharactersToConsole, nullptr);
    consoleThread->privileged = true;
    consoleThread->start();

    userThread = new PCB(userMainWrapper, nullptr);
    userThread->privileged = false;
    userThread->start();

    state = RUNNING;
    Riscv::enableInterrupts();
}

void Kernel::terminate() {
    Riscv::disableInterrupts();
    state = FINISHED;

    while (Scheduler::get());
    Scheduler::put(consoleThread);

    Riscv::enableInterrupts();
    while (!consoleThread->finished())
        thread_dispatch();
    Riscv::disableInterrupts();
}

void Kernel::main() {
    initialize();
    while (!userThread->finished()) {
        thread_dispatch();
    }
    terminate();
}

void userMain();
void Kernel::userMainWrapper(void* _) {
    userMain();
}

void main() {
    Kernel::main();
}


/**
 *
 *      potential bugs:
 * memory allocator: &(x->next)
 * KConsole::putCharacterOutput(c); console interrupt
 * KConsole: pendingPutc, pendingGetc
 * -fno-use-cxa-atexit
 * mc_sip(SIP_SSIP); timer interrupt
 * back from sem return
 * system thread timeSlice = 0
 *
 *
 *      todo-s:
 * friend classes, private vs public
 * minimize includes, kernel namespace
 * debugging prints
 * scause enum
 *
*/