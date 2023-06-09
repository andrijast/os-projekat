#include "../h/Riscv.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/TCB.hpp"
#include "../h/KConsole.hpp"
#include "../h/Scheduler.hpp"
#include "../h/syscall_c.hpp"
#include "../h/Kernel.hpp"

Kernel::State Kernel::state = STARTED;

TCB* Kernel::systemThread = nullptr;
TCB* Kernel::consoleThread = nullptr;
TCB* Kernel::userThread = nullptr;

void Kernel::initialize() {
    Riscv::w_stvec((uint64) Riscv::sroutine);

    MemoryAllocator::initialize();
    TCB::initialize();
    KConsole::initialize();

    systemThread = new TCB(0, 0, 0, 0);
    systemThread->privileged = true;
    TCB::running = systemThread;
    TCB::running->setState(TCB::RUNNING);

    consoleThread = new TCB(KConsole::sendCharactersToConsole, nullptr);
    consoleThread->privileged = true;
    consoleThread->start();

    userThread = new TCB(userMainWrapper, nullptr);
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

extern void userMain();
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
 * -fno-use-cxa-atexit (static destructors not called)
 * mc_sip(SIP_SSIP); timer interrupt
 * back from sem return
 * system thread timeSlice = 0
 *
 *
 *      TODO-s:
 * friend classes, private vs public
 * minimize includes, kernel namespace
 * debugging prints
 * valid mem_free check
 *
*/