
.global saimse
.global f

saimse:                                   # @main
        addi    sp, sp, -32
        sd      ra, 24(sp)                      # 8-byte Folded Spill
        sd      s0, 16(sp)                      # 8-byte Folded Spill
        addi    s0, sp, 32
        li      a0, 0
        sd      a0, -32(s0)                     # 8-byte Folded Spill
        sw      a0, -20(s0)
        li      a0, 97
        call    __putc@plt
        li      a0, 10
        call    __putc@plt
        ld      a0, -32(s0)                     # 8-byte Folded Reload
        ld      ra, 24(sp)                      # 8-byte Folded Reload
        ld      s0, 16(sp)                      # 8-byte Folded Reload
        addi    sp, sp, 32
        ret


f:                                  # @f()
        addi    sp, sp, -32
        sd      ra, 24(sp)                      # 8-byte Folded Spill
        sd      s0, 16(sp)                      # 8-byte Folded Spill
        addi    s0, sp, 32
        li      a0, 3
        sw      a0, -20(s0)
        li      a0, 2
        sw      a0, -24(s0)
        lw      a1, -20(s0)
        lw      a0, -24(s0)
        bge     a0, a1, .LBB0_2
        j       .LBB0_1
.LBB0_1:
        li      a0, -4
        sw      a0, -20(s0)
        j       .LBB0_3
.LBB0_2:
        li      a0, -5
        sw      a0, -20(s0)
        j       .LBB0_3
.LBB0_3:
        unimp