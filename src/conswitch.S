
# void PCB::contextSwitch(PCB::Context* oldContext, PCB::Context* newContext);
.global _ZN3PCB13contextSwitchEPNS_7ContextES1_
.type _ZN3PCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3PCB13contextSwitchEPNS_7ContextES1_:

    sd sp, 0(a0)
    sd ra, 8(a0)

    ld sp, 0(a1)
    ld ra, 8(a1)

    ret