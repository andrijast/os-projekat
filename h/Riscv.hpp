#pragma once

#include "../lib/hw.h"
#define REG uint64

class Riscv {

    static uint64 totalTime; // todo: move to kernel?

    // todo: this stuff
    static void setPrivilegeLevel();
    static void popSppSpie(); // must not be inlined

    // regutils todo: remove those?
    static void pushRegisters();
    static void popRegisters();

    // trap routine
    static void sroutine();
    static void croutine();

    // interrupts
    static void enableInterrupts();
    static void disableInterrupts();

    // a-registers from stack
    static REG r_a(REG);
    static void w_a0(REG);

    // console
    static REG console_status();
    static REG console_receive();
    static void console_send(REG c);

    ///     ----- System Registers -----

    static REG r_scause();
    static void w_stvec(REG);
    static REG r_sscratch();

    static REG r_sepc();
    static void w_sepc(REG);

    static REG r_sstatus();
    static void w_sstatus(REG);

    static void ms_sstatus(REG);
    static void mc_sstatus(REG);

    static void ms_sip(REG);
    static void mc_sip(REG);


    // bits in system registers
    enum SystemRegisterBits {
        SCAUSE_BNT = (1ul << 63), // interrupt type, 1=external, 0=internal
        SSTATUS_SIE = (1ul << 1),  // system interrupt enable
        SSTATUS_SPIE = (1ul << 5), // system previous interrupt enable
        SSTATUS_SPP = (1ul << 8),  // previous mode, 1=system, 0=user
        SIP_SSIP = (1ul << 1), // internal (software) interrupt pending - timer
        SIP_STIP = (1ul << 5), // org_timer interrupt pending
        SIP_SEIP = (1ul << 9), // external (hardware) interrupt pending
        SIE_SSIE = (1ul << 1), // internal (software) interrupt enabled - timer
        SIE_STIE = (1ul << 5), // org_timer interrupt enabled
        SIE_SEIE = (1ul << 9), // external (hardware) interrupt enabled
    };

    // friends
    friend class Kernel;
    friend class MemoryAllocator;
    friend class PCB;
    friend class Scheduler;
    friend class KSemaphore;
    friend class KConsole;
};


// ----- Riscv inline implementations -----

inline REG Riscv::console_status() {
    uint64 x = CONSOLE_STATUS;
    __asm__ volatile("mv a0, %0"::"r"(x));
    __asm__ volatile("lb a1, 0(a0)");
    uint64 operation;
    __asm__ volatile("mv %0, a1" :  "=r"(operation));
    return operation;
}
inline REG Riscv::console_receive() {
    uint64 x = CONSOLE_TX_DATA;
    __asm__ volatile("mv a0, %0"::"r"(x));
    __asm__ volatile("lb a1,0(a0)");
    char c;
    __asm__ volatile("mv %0, a1" :  "=r"(c));
    return c;
}
inline void Riscv::console_send(REG c) {
    REG x = CONSOLE_RX_DATA;
    __asm__ volatile("mv a0, %0"::"r"(x));
    __asm__ volatile("mv a1, %0" :  :"r"((uint64)c));
    __asm__ volatile("sb a1,0(a0)");
}

inline void Riscv::enableInterrupts() {
    ms_sstatus(Riscv::SSTATUS_SIE);
}

inline void Riscv::disableInterrupts() {
    mc_sstatus(Riscv::SSTATUS_SIE);
}

inline REG Riscv::r_scause() {
    REG volatile scause;
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    return scause;
}
inline void Riscv::w_stvec(REG stvec) {
    __asm__ volatile("csrw stvec, %0" : : "r"(stvec));
}
inline REG Riscv::r_sscratch() {
    REG volatile sscratch;
    __asm__ volatile("csrr %0, sscratch" : "=r"(sscratch));
    return sscratch;
}

inline REG Riscv::r_sepc() {
    REG volatile sepc;
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    return sepc;
}
inline void Riscv::w_sepc(REG sepc) {
    __asm__ volatile("csrw sepc, %0" : : "r"(sepc));
}

inline REG Riscv::r_sstatus() {
    REG volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    return sstatus;
}
inline void Riscv::w_sstatus(REG sstatus) {
    __asm__ volatile("csrw sstatus, %0" : : "r"(sstatus));
}

inline void Riscv::ms_sstatus(REG mask) {
    __asm__ volatile("csrs sstatus, %0" : : "r"(mask));
}
inline void Riscv::mc_sstatus(REG mask) {
    __asm__ volatile("csrc sstatus, %0" : : "r"(mask));
}

inline void Riscv::ms_sip(REG mask) {
    __asm__ volatile("csrs sip, %0" : : "r"(mask));
}
inline void Riscv::mc_sip(REG mask) {
    __asm__ volatile("csrc sip, %0" : : "r"(mask));
}