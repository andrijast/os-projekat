#include "../h/TCB.hpp"
#include "../h/Riscv.hpp"

uint64 Riscv::totalTime = 0;

REG Riscv::r_a(REG i) {
    uint64 addr = TCB::running->savedSP + 80 + 8 * i;
    uint64 a = -1;
    __asm__ volatile("ld %0, 0(%1)" : "=r"(a) : "r"(addr));
    return a;
}
void Riscv::w_a0(REG a0) {
    uint64 addr = TCB::running->savedSP + 80;
    __asm__ volatile("sd %0, 0(%1)" : : "r"(a0), "r"(addr));
}

void Riscv::popSppSpie() {
    __asm__ volatile("csrw sepc, ra");
    __asm__ volatile("sret");
}

void Riscv::setPrivilegeLevel() {
    if (TCB::running->privileged)
        ms_sstatus(SSTATUS_SPP);
    else
        mc_sstatus(SSTATUS_SPP);
}

