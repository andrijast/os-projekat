#include "../h/MemoryAllocator.hpp"
#include "../h/PCB.hpp"
#include "../h/KSemaphore.hpp"
#include "../h/Scheduler.hpp"
#include "../h/KConsole.hpp"
#include "../h/Riscv.hpp"

void Riscv::croutine()
{
    PCB::running->savedSP = r_sscratch();

    uint64 scause = Riscv::r_scause();
    bool external = scause & SCAUSE_BNT;
    scause &= ~SCAUSE_BNT;

    // spoljasnji (asinhroni) prekidi
    if (external) {
        if (scause == 1) { // prekid tajmera

            uint64 volatile sepc = r_sepc();
            uint64 volatile sstatus = r_sstatus();

            totalTime++;
            Scheduler::checkAwake();
            PCB::timerInterrupt();

            mc_sip(SIP_SSIP);
            w_sstatus(sstatus);
            w_sepc(sepc);
            setPrivilegeLevel();

        }
        if (scause == 9) { // spoljasnji hardverski prekid - konzola

            KConsole::getCharactersFromConsole();

            plic_complete(plic_claim());

        }
    }

    // unutrasnji (sinhroni) prekidi
    else {
        if (scause == 2 || scause == 5 || scause == 7) { // softverska greska
            // 2 - ilegalna instrukcija
            // 5 - nedozvoljena adresa citanja
            // 7 - nedozvoljena adresa upisa
            PCB::sc_thread_exit();
        }
        if (scause == 8 || scause == 9) { // ecall iz korisnickog (8), sistemskog (9) - ABI system call
            uint64 volatile sepc = r_sepc() + 4;
            uint64 volatile sstatus = r_sstatus();

            uint64 op_code = r_a(0);
            switch (op_code) {
                case 0x01: MemoryAllocator::sc_mem_alloc(); break;
                case 0x02: MemoryAllocator::sc_mem_free(); break;
                case 0x11: PCB::sc_thread_create(); break;
                case 0x12: PCB::sc_thread_exit(); break; // context switch
                case 0x13: PCB::sc_thread_dispatch(); break; // context switch
                case 0x14: PCB::sc_thread_build(); break; // annex
                case 0x15: PCB::sc_thread_start(); break; // annex
                case 0x16: PCB::sc_thread_delete(); break; // annex
                case 0x21: KSemaphore::sc_sem_open(); break;
                case 0x22: KSemaphore::sc_sem_close(); break;
                case 0x23: KSemaphore::sc_sem_wait(); break;
                case 0x24: KSemaphore::sc_sem_signal(); break;
                case 0x31: PCB::sc_time_sleep(); break; // context switch
                case 0x41: KConsole::sc_getc(); break;
                case 0x42: KConsole::sc_putc(); break;
                case 0x43: KConsole::sc_getc_output(); break; // annex
            }

            w_sstatus(sstatus);
            w_sepc(sepc);
            setPrivilegeLevel();
        }
    }

}
