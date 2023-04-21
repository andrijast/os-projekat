
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00009117          	auipc	sp,0x9
    80000004:	df813103          	ld	sp,-520(sp) # 80008df8 <_GLOBAL_OFFSET_TABLE_+0x38>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	22d040ef          	jal	ra,80004a48 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>:
# void PCB::contextSwitch(PCB::Context* oldContext, PCB::Context* newContext);
.global _ZN3PCB13contextSwitchEPNS_7ContextES1_
.type _ZN3PCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3PCB13contextSwitchEPNS_7ContextES1_:

    sd sp, 0(a0)
    80001000:	00253023          	sd	sp,0(a0) # 1000 <_entry-0x7ffff000>
    sd ra, 8(a0)
    80001004:	00153423          	sd	ra,8(a0)

    ld sp, 0(a1)
    80001008:	0005b103          	ld	sp,0(a1)
    ld ra, 8(a1)
    8000100c:	0085b083          	ld	ra,8(a1)

    80001010:	00008067          	ret
	...

0000000080001020 <_ZN5Riscv8sroutineEv>:
.align 4
.global _ZN5Riscv8sroutineEv
.type _ZN5Riscv8sroutineEv, @function
_ZN5Riscv8sroutineEv:

    addi sp, sp, -256
    80001020:	f0010113          	addi	sp,sp,-256
    csrw sscratch, sp
    80001024:	14011073          	csrw	sscratch,sp

    sd x0, 0(sp)
    80001028:	00013023          	sd	zero,0(sp)
    sd x1, 8(sp)
    8000102c:	00113423          	sd	ra,8(sp)
    sd x2, 16(sp)
    80001030:	00213823          	sd	sp,16(sp)
    sd x3, 24(sp)
    80001034:	00313c23          	sd	gp,24(sp)
    sd x4, 32(sp)
    80001038:	02413023          	sd	tp,32(sp)
    sd x5, 40(sp)
    8000103c:	02513423          	sd	t0,40(sp)
    sd x6, 48(sp)
    80001040:	02613823          	sd	t1,48(sp)
    sd x7, 56(sp)
    80001044:	02713c23          	sd	t2,56(sp)
    sd x8, 64(sp)
    80001048:	04813023          	sd	s0,64(sp)
    sd x9, 72(sp)
    8000104c:	04913423          	sd	s1,72(sp)
    sd x10, 80(sp)
    80001050:	04a13823          	sd	a0,80(sp)
    sd x11, 88(sp)
    80001054:	04b13c23          	sd	a1,88(sp)
    sd x12, 96(sp)
    80001058:	06c13023          	sd	a2,96(sp)
    sd x13, 104(sp)
    8000105c:	06d13423          	sd	a3,104(sp)
    sd x14, 112(sp)
    80001060:	06e13823          	sd	a4,112(sp)
    sd x15, 120(sp)
    80001064:	06f13c23          	sd	a5,120(sp)
    sd x16, 128(sp)
    80001068:	09013023          	sd	a6,128(sp)
    sd x17, 136(sp)
    8000106c:	09113423          	sd	a7,136(sp)
    sd x18, 144(sp)
    80001070:	09213823          	sd	s2,144(sp)
    sd x19, 152(sp)
    80001074:	09313c23          	sd	s3,152(sp)
    sd x20, 160(sp)
    80001078:	0b413023          	sd	s4,160(sp)
    sd x21, 168(sp)
    8000107c:	0b513423          	sd	s5,168(sp)
    sd x22, 176(sp)
    80001080:	0b613823          	sd	s6,176(sp)
    sd x23, 184(sp)
    80001084:	0b713c23          	sd	s7,184(sp)
    sd x24, 192(sp)
    80001088:	0d813023          	sd	s8,192(sp)
    sd x25, 200(sp)
    8000108c:	0d913423          	sd	s9,200(sp)
    sd x26, 208(sp)
    80001090:	0da13823          	sd	s10,208(sp)
    sd x27, 216(sp)
    80001094:	0db13c23          	sd	s11,216(sp)
    sd x28, 224(sp)
    80001098:	0fc13023          	sd	t3,224(sp)
    sd x29, 232(sp)
    8000109c:	0fd13423          	sd	t4,232(sp)
    sd x30, 240(sp)
    800010a0:	0fe13823          	sd	t5,240(sp)
    sd x31, 248(sp)
    800010a4:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv8croutineEv
    800010a8:	345010ef          	jal	ra,80002bec <_ZN5Riscv8croutineEv>

    ld x0, 0(sp)
    800010ac:	00013003          	ld	zero,0(sp)
    ld x1, 8(sp)
    800010b0:	00813083          	ld	ra,8(sp)
    ld x2, 16(sp)
    800010b4:	01013103          	ld	sp,16(sp)
    ld x3, 24(sp)
    800010b8:	01813183          	ld	gp,24(sp)
    ld x4, 32(sp)
    800010bc:	02013203          	ld	tp,32(sp)
    ld x5, 40(sp)
    800010c0:	02813283          	ld	t0,40(sp)
    ld x6, 48(sp)
    800010c4:	03013303          	ld	t1,48(sp)
    ld x7, 56(sp)
    800010c8:	03813383          	ld	t2,56(sp)
    ld x8, 64(sp)
    800010cc:	04013403          	ld	s0,64(sp)
    ld x9, 72(sp)
    800010d0:	04813483          	ld	s1,72(sp)
    ld x10, 80(sp)
    800010d4:	05013503          	ld	a0,80(sp)
    ld x11, 88(sp)
    800010d8:	05813583          	ld	a1,88(sp)
    ld x12, 96(sp)
    800010dc:	06013603          	ld	a2,96(sp)
    ld x13, 104(sp)
    800010e0:	06813683          	ld	a3,104(sp)
    ld x14, 112(sp)
    800010e4:	07013703          	ld	a4,112(sp)
    ld x15, 120(sp)
    800010e8:	07813783          	ld	a5,120(sp)
    ld x16, 128(sp)
    800010ec:	08013803          	ld	a6,128(sp)
    ld x17, 136(sp)
    800010f0:	08813883          	ld	a7,136(sp)
    ld x18, 144(sp)
    800010f4:	09013903          	ld	s2,144(sp)
    ld x19, 152(sp)
    800010f8:	09813983          	ld	s3,152(sp)
    ld x20, 160(sp)
    800010fc:	0a013a03          	ld	s4,160(sp)
    ld x21, 168(sp)
    80001100:	0a813a83          	ld	s5,168(sp)
    ld x22, 176(sp)
    80001104:	0b013b03          	ld	s6,176(sp)
    ld x23, 184(sp)
    80001108:	0b813b83          	ld	s7,184(sp)
    ld x24, 192(sp)
    8000110c:	0c013c03          	ld	s8,192(sp)
    ld x25, 200(sp)
    80001110:	0c813c83          	ld	s9,200(sp)
    ld x26, 208(sp)
    80001114:	0d013d03          	ld	s10,208(sp)
    ld x27, 216(sp)
    80001118:	0d813d83          	ld	s11,216(sp)
    ld x28, 224(sp)
    8000111c:	0e013e03          	ld	t3,224(sp)
    ld x29, 232(sp)
    80001120:	0e813e83          	ld	t4,232(sp)
    ld x30, 240(sp)
    80001124:	0f013f03          	ld	t5,240(sp)
    ld x31, 248(sp)
    80001128:	0f813f83          	ld	t6,248(sp)

    addi sp, sp, 256
    8000112c:	10010113          	addi	sp,sp,256

    sret
    80001130:	10200073          	sret
	...

0000000080001140 <_ZN5Riscv13pushRegistersEv>:

# void Riscv::pushRegisters();
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    addi sp, sp, -256
    80001140:	f0010113          	addi	sp,sp,-256
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001144:	00313c23          	sd	gp,24(sp)
    80001148:	02413023          	sd	tp,32(sp)
    8000114c:	02513423          	sd	t0,40(sp)
    80001150:	02613823          	sd	t1,48(sp)
    80001154:	02713c23          	sd	t2,56(sp)
    80001158:	04813023          	sd	s0,64(sp)
    8000115c:	04913423          	sd	s1,72(sp)
    80001160:	04a13823          	sd	a0,80(sp)
    80001164:	04b13c23          	sd	a1,88(sp)
    80001168:	06c13023          	sd	a2,96(sp)
    8000116c:	06d13423          	sd	a3,104(sp)
    80001170:	06e13823          	sd	a4,112(sp)
    80001174:	06f13c23          	sd	a5,120(sp)
    80001178:	09013023          	sd	a6,128(sp)
    8000117c:	09113423          	sd	a7,136(sp)
    80001180:	09213823          	sd	s2,144(sp)
    80001184:	09313c23          	sd	s3,152(sp)
    80001188:	0b413023          	sd	s4,160(sp)
    8000118c:	0b513423          	sd	s5,168(sp)
    80001190:	0b613823          	sd	s6,176(sp)
    80001194:	0b713c23          	sd	s7,184(sp)
    80001198:	0d813023          	sd	s8,192(sp)
    8000119c:	0d913423          	sd	s9,200(sp)
    800011a0:	0da13823          	sd	s10,208(sp)
    800011a4:	0db13c23          	sd	s11,216(sp)
    800011a8:	0fc13023          	sd	t3,224(sp)
    800011ac:	0fd13423          	sd	t4,232(sp)
    800011b0:	0fe13823          	sd	t5,240(sp)
    800011b4:	0ff13c23          	sd	t6,248(sp)
    ret
    800011b8:	00008067          	ret

00000000800011bc <_ZN5Riscv12popRegistersEv>:
.global _ZN5Riscv12popRegistersEv
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    800011bc:	01813183          	ld	gp,24(sp)
    800011c0:	02013203          	ld	tp,32(sp)
    800011c4:	02813283          	ld	t0,40(sp)
    800011c8:	03013303          	ld	t1,48(sp)
    800011cc:	03813383          	ld	t2,56(sp)
    800011d0:	04013403          	ld	s0,64(sp)
    800011d4:	04813483          	ld	s1,72(sp)
    800011d8:	05013503          	ld	a0,80(sp)
    800011dc:	05813583          	ld	a1,88(sp)
    800011e0:	06013603          	ld	a2,96(sp)
    800011e4:	06813683          	ld	a3,104(sp)
    800011e8:	07013703          	ld	a4,112(sp)
    800011ec:	07813783          	ld	a5,120(sp)
    800011f0:	08013803          	ld	a6,128(sp)
    800011f4:	08813883          	ld	a7,136(sp)
    800011f8:	09013903          	ld	s2,144(sp)
    800011fc:	09813983          	ld	s3,152(sp)
    80001200:	0a013a03          	ld	s4,160(sp)
    80001204:	0a813a83          	ld	s5,168(sp)
    80001208:	0b013b03          	ld	s6,176(sp)
    8000120c:	0b813b83          	ld	s7,184(sp)
    80001210:	0c013c03          	ld	s8,192(sp)
    80001214:	0c813c83          	ld	s9,200(sp)
    80001218:	0d013d03          	ld	s10,208(sp)
    8000121c:	0d813d83          	ld	s11,216(sp)
    80001220:	0e013e03          	ld	t3,224(sp)
    80001224:	0e813e83          	ld	t4,232(sp)
    80001228:	0f013f03          	ld	t5,240(sp)
    8000122c:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001230:	10010113          	addi	sp,sp,256
    ret
    80001234:	00008067          	ret

0000000080001238 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001238:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    8000123c:	00b29a63          	bne	t0,a1,80001250 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80001240:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001244:	fe029ae3          	bnez	t0,80001238 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001248:	00000513          	li	a0,0
    jr ra                  # Return.
    8000124c:	00008067          	ret

0000000080001250 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80001250:	00100513          	li	a0,1
    80001254:	00008067          	ret

0000000080001258 <_Z9mem_allocm>:
#include "../h/syscall_c.hpp"

void* mem_alloc(size_t size) {
    80001258:	ff010113          	addi	sp,sp,-16
    8000125c:	00813423          	sd	s0,8(sp)
    80001260:	01010413          	addi	s0,sp,16
    uint64 inBlocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80001264:	03f50513          	addi	a0,a0,63
    80001268:	00655513          	srli	a0,a0,0x6

    __asm__ volatile("mv a1, %0" : : "r" (inBlocks));
    8000126c:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (0x01));
    80001270:	00100793          	li	a5,1
    80001274:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    80001278:	00000073          	ecall

    uint64 ret = 0x01;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    8000127c:	00050513          	mv	a0,a0
    return (void*)ret;
}
    80001280:	00813403          	ld	s0,8(sp)
    80001284:	01010113          	addi	sp,sp,16
    80001288:	00008067          	ret

000000008000128c <_Z8mem_freePv>:

int mem_free(void* adr) {
    8000128c:	ff010113          	addi	sp,sp,-16
    80001290:	00813423          	sd	s0,8(sp)
    80001294:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" : : "r" ((uint64)adr));
    80001298:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (0x02));
    8000129c:	00200793          	li	a5,2
    800012a0:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800012a4:	00000073          	ecall

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    800012a8:	00050513          	mv	a0,a0
    return (int)ret;
}
    800012ac:	0005051b          	sext.w	a0,a0
    800012b0:	00813403          	ld	s0,8(sp)
    800012b4:	01010113          	addi	sp,sp,16
    800012b8:	00008067          	ret

00000000800012bc <_Z13thread_createPP7_threadPFvPvES2_>:

int thread_create(thread_t* handle, void (*body)(void*), void* args) {
    800012bc:	fd010113          	addi	sp,sp,-48
    800012c0:	02113423          	sd	ra,40(sp)
    800012c4:	02813023          	sd	s0,32(sp)
    800012c8:	00913c23          	sd	s1,24(sp)
    800012cc:	01213823          	sd	s2,16(sp)
    800012d0:	01313423          	sd	s3,8(sp)
    800012d4:	03010413          	addi	s0,sp,48
    800012d8:	00050493          	mv	s1,a0
    800012dc:	00058913          	mv	s2,a1
    800012e0:	00060993          	mv	s3,a2
    void* stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    800012e4:	00001537          	lui	a0,0x1
    800012e8:	00000097          	auipc	ra,0x0
    800012ec:	f70080e7          	jalr	-144(ra) # 80001258 <_Z9mem_allocm>
    if (!stack_space) return -1;
    800012f0:	04050263          	beqz	a0,80001334 <_Z13thread_createPP7_threadPFvPvES2_+0x78>

    __asm__ volatile("mv a4, %0" : : "r" ((uint64)stack_space));
    800012f4:	00050713          	mv	a4,a0
    __asm__ volatile("mv a3, %0" : : "r" ((uint64)args));
    800012f8:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" : : "r" ((uint64)body));
    800012fc:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" : : "r" ((uint64)handle));
    80001300:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" : : "r" (0x11));
    80001304:	01100793          	li	a5,17
    80001308:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    8000130c:	00000073          	ecall

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    80001310:	00050513          	mv	a0,a0
    return (int)ret;
    80001314:	0005051b          	sext.w	a0,a0
}
    80001318:	02813083          	ld	ra,40(sp)
    8000131c:	02013403          	ld	s0,32(sp)
    80001320:	01813483          	ld	s1,24(sp)
    80001324:	01013903          	ld	s2,16(sp)
    80001328:	00813983          	ld	s3,8(sp)
    8000132c:	03010113          	addi	sp,sp,48
    80001330:	00008067          	ret
    if (!stack_space) return -1;
    80001334:	fff00513          	li	a0,-1
    80001338:	fe1ff06f          	j	80001318 <_Z13thread_createPP7_threadPFvPvES2_+0x5c>

000000008000133c <_Z11thread_exitv>:

int thread_exit() {
    8000133c:	ff010113          	addi	sp,sp,-16
    80001340:	00813423          	sd	s0,8(sp)
    80001344:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0, %0" : : "r" (0x12));
    80001348:	01200793          	li	a5,18
    8000134c:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    80001350:	00000073          	ecall

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    80001354:	00050513          	mv	a0,a0
    return (int)ret;
}
    80001358:	0005051b          	sext.w	a0,a0
    8000135c:	00813403          	ld	s0,8(sp)
    80001360:	01010113          	addi	sp,sp,16
    80001364:	00008067          	ret

0000000080001368 <_Z15thread_dispatchv>:

void thread_dispatch() {
    80001368:	ff010113          	addi	sp,sp,-16
    8000136c:	00813423          	sd	s0,8(sp)
    80001370:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0, %0" : : "r" (0x13));
    80001374:	01300793          	li	a5,19
    80001378:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    8000137c:	00000073          	ecall
}
    80001380:	00813403          	ld	s0,8(sp)
    80001384:	01010113          	addi	sp,sp,16
    80001388:	00008067          	ret

000000008000138c <_Z12thread_buildPP7_threadPFvPvES2_>:

int thread_build(thread_t* handle, void(*body)(void*), void *args) {
    8000138c:	fd010113          	addi	sp,sp,-48
    80001390:	02113423          	sd	ra,40(sp)
    80001394:	02813023          	sd	s0,32(sp)
    80001398:	00913c23          	sd	s1,24(sp)
    8000139c:	01213823          	sd	s2,16(sp)
    800013a0:	01313423          	sd	s3,8(sp)
    800013a4:	03010413          	addi	s0,sp,48
    800013a8:	00050493          	mv	s1,a0
    800013ac:	00058913          	mv	s2,a1
    800013b0:	00060993          	mv	s3,a2
    void* stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    800013b4:	00001537          	lui	a0,0x1
    800013b8:	00000097          	auipc	ra,0x0
    800013bc:	ea0080e7          	jalr	-352(ra) # 80001258 <_Z9mem_allocm>
    if (!stack_space) return -1;
    800013c0:	04050263          	beqz	a0,80001404 <_Z12thread_buildPP7_threadPFvPvES2_+0x78>

    __asm__ volatile("mv a4, %0" : : "r" ((uint64)stack_space));
    800013c4:	00050713          	mv	a4,a0
    __asm__ volatile("mv a3, %0" : : "r" ((uint64)args));
    800013c8:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" : : "r" ((uint64)body));
    800013cc:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" : : "r" ((uint64)handle));
    800013d0:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" : : "r" (0x14));
    800013d4:	01400793          	li	a5,20
    800013d8:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800013dc:	00000073          	ecall

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    800013e0:	00050513          	mv	a0,a0
    return (int)ret;
    800013e4:	0005051b          	sext.w	a0,a0
}
    800013e8:	02813083          	ld	ra,40(sp)
    800013ec:	02013403          	ld	s0,32(sp)
    800013f0:	01813483          	ld	s1,24(sp)
    800013f4:	01013903          	ld	s2,16(sp)
    800013f8:	00813983          	ld	s3,8(sp)
    800013fc:	03010113          	addi	sp,sp,48
    80001400:	00008067          	ret
    if (!stack_space) return -1;
    80001404:	fff00513          	li	a0,-1
    80001408:	fe1ff06f          	j	800013e8 <_Z12thread_buildPP7_threadPFvPvES2_+0x5c>

000000008000140c <_Z12thread_startPv>:

int thread_start(void* p) {
    8000140c:	ff010113          	addi	sp,sp,-16
    80001410:	00813423          	sd	s0,8(sp)
    80001414:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" : : "r" ((uint64)p));
    80001418:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (0x15));
    8000141c:	01500793          	li	a5,21
    80001420:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    80001424:	00000073          	ecall

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    80001428:	00050513          	mv	a0,a0
    return (int)ret;
}
    8000142c:	0005051b          	sext.w	a0,a0
    80001430:	00813403          	ld	s0,8(sp)
    80001434:	01010113          	addi	sp,sp,16
    80001438:	00008067          	ret

000000008000143c <_Z13thread_deleteP7_thread>:

int thread_delete(thread_t handle) {
    8000143c:	ff010113          	addi	sp,sp,-16
    80001440:	00813423          	sd	s0,8(sp)
    80001444:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" : : "r" ((uint64)handle));
    80001448:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (0x16));
    8000144c:	01600793          	li	a5,22
    80001450:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    80001454:	00000073          	ecall

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    80001458:	00050513          	mv	a0,a0
    return (int)ret;
}
    8000145c:	0005051b          	sext.w	a0,a0
    80001460:	00813403          	ld	s0,8(sp)
    80001464:	01010113          	addi	sp,sp,16
    80001468:	00008067          	ret

000000008000146c <_Z8sem_openPP4_semj>:


int sem_open(sem_t* handle, unsigned init) {
    8000146c:	ff010113          	addi	sp,sp,-16
    80001470:	00813423          	sd	s0,8(sp)
    80001474:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a2, %0" : : "r" ((uint64)init));
    80001478:	02059593          	slli	a1,a1,0x20
    8000147c:	0205d593          	srli	a1,a1,0x20
    80001480:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" : : "r" ((uint64)handle));
    80001484:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (0x21));
    80001488:	02100793          	li	a5,33
    8000148c:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    80001490:	00000073          	ecall

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    80001494:	00050513          	mv	a0,a0
    return (int)ret;
}
    80001498:	0005051b          	sext.w	a0,a0
    8000149c:	00813403          	ld	s0,8(sp)
    800014a0:	01010113          	addi	sp,sp,16
    800014a4:	00008067          	ret

00000000800014a8 <_Z9sem_closeP4_sem>:

int sem_close(sem_t handle) {
    800014a8:	ff010113          	addi	sp,sp,-16
    800014ac:	00813423          	sd	s0,8(sp)
    800014b0:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" : : "r" ((uint64)handle));
    800014b4:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (0x22));
    800014b8:	02200793          	li	a5,34
    800014bc:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800014c0:	00000073          	ecall

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    800014c4:	00050513          	mv	a0,a0
    return (int)ret;
}
    800014c8:	0005051b          	sext.w	a0,a0
    800014cc:	00813403          	ld	s0,8(sp)
    800014d0:	01010113          	addi	sp,sp,16
    800014d4:	00008067          	ret

00000000800014d8 <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id) {
    800014d8:	ff010113          	addi	sp,sp,-16
    800014dc:	00813423          	sd	s0,8(sp)
    800014e0:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" : : "r" ((uint64)id));
    800014e4:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (0x23));
    800014e8:	02300793          	li	a5,35
    800014ec:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800014f0:	00000073          	ecall

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    800014f4:	00050513          	mv	a0,a0
    return (int)ret;
}
    800014f8:	0005051b          	sext.w	a0,a0
    800014fc:	00813403          	ld	s0,8(sp)
    80001500:	01010113          	addi	sp,sp,16
    80001504:	00008067          	ret

0000000080001508 <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id) {
    80001508:	ff010113          	addi	sp,sp,-16
    8000150c:	00813423          	sd	s0,8(sp)
    80001510:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" : : "r" ((uint64)id));
    80001514:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (0x24));
    80001518:	02400793          	li	a5,36
    8000151c:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    80001520:	00000073          	ecall

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    80001524:	00050513          	mv	a0,a0
    return (int)ret;
}
    80001528:	0005051b          	sext.w	a0,a0
    8000152c:	00813403          	ld	s0,8(sp)
    80001530:	01010113          	addi	sp,sp,16
    80001534:	00008067          	ret

0000000080001538 <_Z10time_sleepm>:

int time_sleep(uint64 time) {
    80001538:	ff010113          	addi	sp,sp,-16
    8000153c:	00813423          	sd	s0,8(sp)
    80001540:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" : : "r" ((uint64)time));
    80001544:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (0x31));
    80001548:	03100793          	li	a5,49
    8000154c:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    80001550:	00000073          	ecall

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    80001554:	00050513          	mv	a0,a0
    return (int)ret;
}
    80001558:	0005051b          	sext.w	a0,a0
    8000155c:	00813403          	ld	s0,8(sp)
    80001560:	01010113          	addi	sp,sp,16
    80001564:	00008067          	ret

0000000080001568 <_Z4getcv>:


char getc() {
    80001568:	ff010113          	addi	sp,sp,-16
    8000156c:	00813423          	sd	s0,8(sp)
    80001570:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0, %0" : : "r" (0x41));
    80001574:	04100793          	li	a5,65
    80001578:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    8000157c:	00000073          	ecall

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    80001580:	00050513          	mv	a0,a0
    return (char)ret;
}
    80001584:	0ff57513          	andi	a0,a0,255
    80001588:	00813403          	ld	s0,8(sp)
    8000158c:	01010113          	addi	sp,sp,16
    80001590:	00008067          	ret

0000000080001594 <_Z4putcc>:

void putc(char c) {
    80001594:	ff010113          	addi	sp,sp,-16
    80001598:	00813423          	sd	s0,8(sp)
    8000159c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" : : "r" ((uint64)c));
    800015a0:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (0x42));
    800015a4:	04200793          	li	a5,66
    800015a8:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800015ac:	00000073          	ecall
}
    800015b0:	00813403          	ld	s0,8(sp)
    800015b4:	01010113          	addi	sp,sp,16
    800015b8:	00008067          	ret

00000000800015bc <_Z11getc_outputv>:

char getc_output() {
    800015bc:	ff010113          	addi	sp,sp,-16
    800015c0:	00813423          	sd	s0,8(sp)
    800015c4:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0, %0" : : "r" (0x43));
    800015c8:	04300793          	li	a5,67
    800015cc:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800015d0:	00000073          	ecall

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    800015d4:	00050513          	mv	a0,a0
    return (char)ret;
}
    800015d8:	0ff57513          	andi	a0,a0,255
    800015dc:	00813403          	ld	s0,8(sp)
    800015e0:	01010113          	addi	sp,sp,16
    800015e4:	00008067          	ret

00000000800015e8 <_ZN3PCB6runnerEv>:
void PCB::start() {
    Scheduler::put(this);
}

int thread_exit(); // syscall_c
void PCB::runner() {
    800015e8:	ff010113          	addi	sp,sp,-16
    800015ec:	00113423          	sd	ra,8(sp)
    800015f0:	00813023          	sd	s0,0(sp)
    800015f4:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    800015f8:	00001097          	auipc	ra,0x1
    800015fc:	398080e7          	jalr	920(ra) # 80002990 <_ZN5Riscv10popSppSpieEv>
    running->body(running->args);
    80001600:	00008797          	auipc	a5,0x8
    80001604:	8707b783          	ld	a5,-1936(a5) # 80008e70 <_ZN3PCB7runningE>
    80001608:	0107b703          	ld	a4,16(a5)
    8000160c:	0187b503          	ld	a0,24(a5)
    80001610:	000700e7          	jalr	a4
    thread_exit();
    80001614:	00000097          	auipc	ra,0x0
    80001618:	d28080e7          	jalr	-728(ra) # 8000133c <_Z11thread_exitv>
}
    8000161c:	00813083          	ld	ra,8(sp)
    80001620:	00013403          	ld	s0,0(sp)
    80001624:	01010113          	addi	sp,sp,16
    80001628:	00008067          	ret

000000008000162c <_ZN3PCB10initializeEv>:
void PCB::initialize() {
    8000162c:	ff010113          	addi	sp,sp,-16
    80001630:	00813423          	sd	s0,8(sp)
    80001634:	01010413          	addi	s0,sp,16
}
    80001638:	00813403          	ld	s0,8(sp)
    8000163c:	01010113          	addi	sp,sp,16
    80001640:	00008067          	ret

0000000080001644 <_ZN3PCBC1EPFvPvES0_S0_m>:
PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice):
    80001644:	ff010113          	addi	sp,sp,-16
    80001648:	00813423          	sd	s0,8(sp)
    8000164c:	01010413          	addi	s0,sp,16
        }) {}
    80001650:	00052023          	sw	zero,0(a0) # 1000 <_entry-0x7ffff000>
    80001654:	00053423          	sd	zero,8(a0)
    80001658:	00b53823          	sd	a1,16(a0)
    8000165c:	00c53c23          	sd	a2,24(a0)
    80001660:	02d53023          	sd	a3,32(a0)
    80001664:	02e53423          	sd	a4,40(a0)
    80001668:	02050823          	sb	zero,48(a0)
    8000166c:	02053c23          	sd	zero,56(a0)
    80001670:	04050023          	sb	zero,64(a0)
    80001674:	04053423          	sd	zero,72(a0)
            (uint64) ((uint8*)stack_space + DEFAULT_STACK_SIZE),
    80001678:	000017b7          	lui	a5,0x1
    8000167c:	00f686b3          	add	a3,a3,a5
        }) {}
    80001680:	04d53823          	sd	a3,80(a0)
    80001684:	00000797          	auipc	a5,0x0
    80001688:	f6478793          	addi	a5,a5,-156 # 800015e8 <_ZN3PCB6runnerEv>
    8000168c:	04f53c23          	sd	a5,88(a0)
    80001690:	00813403          	ld	s0,8(sp)
    80001694:	01010113          	addi	sp,sp,16
    80001698:	00008067          	ret

000000008000169c <_ZN3PCBD1Ev>:
PCB::~PCB() {
    8000169c:	ff010113          	addi	sp,sp,-16
    800016a0:	00113423          	sd	ra,8(sp)
    800016a4:	00813023          	sd	s0,0(sp)
    800016a8:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(stack_space);
    800016ac:	02053503          	ld	a0,32(a0)
    800016b0:	00001097          	auipc	ra,0x1
    800016b4:	498080e7          	jalr	1176(ra) # 80002b48 <_ZN15MemoryAllocator5kfreeEPv>
}
    800016b8:	00813083          	ld	ra,8(sp)
    800016bc:	00013403          	ld	s0,0(sp)
    800016c0:	01010113          	addi	sp,sp,16
    800016c4:	00008067          	ret

00000000800016c8 <_ZN3PCB5startEv>:
void PCB::start() {
    800016c8:	ff010113          	addi	sp,sp,-16
    800016cc:	00113423          	sd	ra,8(sp)
    800016d0:	00813023          	sd	s0,0(sp)
    800016d4:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    800016d8:	00001097          	auipc	ra,0x1
    800016dc:	b9c080e7          	jalr	-1124(ra) # 80002274 <_ZN9Scheduler3putEP3PCB>
}
    800016e0:	00813083          	ld	ra,8(sp)
    800016e4:	00013403          	ld	s0,0(sp)
    800016e8:	01010113          	addi	sp,sp,16
    800016ec:	00008067          	ret

00000000800016f0 <_ZN3PCB8dispatchEv>:

void PCB::dispatch() {
    800016f0:	fe010113          	addi	sp,sp,-32
    800016f4:	00113c23          	sd	ra,24(sp)
    800016f8:	00813823          	sd	s0,16(sp)
    800016fc:	00913423          	sd	s1,8(sp)
    80001700:	01213023          	sd	s2,0(sp)
    80001704:	02010413          	addi	s0,sp,32
    PCB* old = running;
    80001708:	00007917          	auipc	s2,0x7
    8000170c:	76893903          	ld	s2,1896(s2) # 80008e70 <_ZN3PCB7runningE>
    if (old->state == RUNNING)
    80001710:	00092703          	lw	a4,0(s2)
    80001714:	00200793          	li	a5,2
    80001718:	04f70c63          	beq	a4,a5,80001770 <_ZN3PCB8dispatchEv+0x80>
        Scheduler::put(old);
    running = Scheduler::get();
    8000171c:	00001097          	auipc	ra,0x1
    80001720:	bb0080e7          	jalr	-1104(ra) # 800022cc <_ZN9Scheduler3getEv>
    80001724:	00007497          	auipc	s1,0x7
    80001728:	74c48493          	addi	s1,s1,1868 # 80008e70 <_ZN3PCB7runningE>
    8000172c:	00a4b023          	sd	a0,0(s1)
    enum State {
        CREATED, READY, RUNNING, // runnable
        SUSPENDED, SLEEPING, FINISHED, // blocked
    }; // queues: ready, suspended, sleeping
    State state = CREATED;
    void setState(State s) { state = s; }
    80001730:	00200793          	li	a5,2
    80001734:	00f52023          	sw	a5,0(a0)
    running->setState(RUNNING);

    timeSliceCounter = 0;
    80001738:	0004b423          	sd	zero,8(s1)
    Riscv::setPrivilegeLevel();
    8000173c:	00001097          	auipc	ra,0x1
    80001740:	274080e7          	jalr	628(ra) # 800029b0 <_ZN5Riscv17setPrivilegeLevelEv>
    contextSwitch(&old->context, &running->context);
    80001744:	0004b583          	ld	a1,0(s1)
    80001748:	05058593          	addi	a1,a1,80
    8000174c:	05090513          	addi	a0,s2,80
    80001750:	00000097          	auipc	ra,0x0
    80001754:	8b0080e7          	jalr	-1872(ra) # 80001000 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    80001758:	01813083          	ld	ra,24(sp)
    8000175c:	01013403          	ld	s0,16(sp)
    80001760:	00813483          	ld	s1,8(sp)
    80001764:	00013903          	ld	s2,0(sp)
    80001768:	02010113          	addi	sp,sp,32
    8000176c:	00008067          	ret
        Scheduler::put(old);
    80001770:	00090513          	mv	a0,s2
    80001774:	00001097          	auipc	ra,0x1
    80001778:	b00080e7          	jalr	-1280(ra) # 80002274 <_ZN9Scheduler3putEP3PCB>
    8000177c:	fa1ff06f          	j	8000171c <_ZN3PCB8dispatchEv+0x2c>

0000000080001780 <_ZN3PCB14timerInterruptEv>:

void PCB::timerInterrupt() {
    timeSliceCounter++;
    80001780:	00007717          	auipc	a4,0x7
    80001784:	6f070713          	addi	a4,a4,1776 # 80008e70 <_ZN3PCB7runningE>
    80001788:	00873783          	ld	a5,8(a4)
    8000178c:	00178793          	addi	a5,a5,1
    80001790:	00f73423          	sd	a5,8(a4)
    if (timeSliceCounter >= running->timeSlice) {
    80001794:	00073703          	ld	a4,0(a4)
    80001798:	02873703          	ld	a4,40(a4)
    8000179c:	00e7f463          	bgeu	a5,a4,800017a4 <_ZN3PCB14timerInterruptEv+0x24>
    800017a0:	00008067          	ret
void PCB::timerInterrupt() {
    800017a4:	ff010113          	addi	sp,sp,-16
    800017a8:	00113423          	sd	ra,8(sp)
    800017ac:	00813023          	sd	s0,0(sp)
    800017b0:	01010413          	addi	s0,sp,16
        dispatch();
    800017b4:	00000097          	auipc	ra,0x0
    800017b8:	f3c080e7          	jalr	-196(ra) # 800016f0 <_ZN3PCB8dispatchEv>
    }
}
    800017bc:	00813083          	ld	ra,8(sp)
    800017c0:	00013403          	ld	s0,0(sp)
    800017c4:	01010113          	addi	sp,sp,16
    800017c8:	00008067          	ret

00000000800017cc <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    800017cc:	ff010113          	addi	sp,sp,-16
    800017d0:	00113423          	sd	ra,8(sp)
    800017d4:	00813023          	sd	s0,0(sp)
    800017d8:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    800017dc:	00001097          	auipc	ra,0x1
    800017e0:	344080e7          	jalr	836(ra) # 80002b20 <_ZN15MemoryAllocator7kmallocEm>
}
    800017e4:	00813083          	ld	ra,8(sp)
    800017e8:	00013403          	ld	s0,0(sp)
    800017ec:	01010113          	addi	sp,sp,16
    800017f0:	00008067          	ret

00000000800017f4 <_ZN3PCBdlEPv>:
void PCB::operator delete(void *ptr) {
    800017f4:	ff010113          	addi	sp,sp,-16
    800017f8:	00113423          	sd	ra,8(sp)
    800017fc:	00813023          	sd	s0,0(sp)
    80001800:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(ptr);
    80001804:	00001097          	auipc	ra,0x1
    80001808:	344080e7          	jalr	836(ra) # 80002b48 <_ZN15MemoryAllocator5kfreeEPv>
}
    8000180c:	00813083          	ld	ra,8(sp)
    80001810:	00013403          	ld	s0,0(sp)
    80001814:	01010113          	addi	sp,sp,16
    80001818:	00008067          	ret

000000008000181c <_ZN3PCB14sc_thread_exitEv>:

// ----- SYSTEM CALLS -----

void PCB::sc_thread_exit() {
    8000181c:	ff010113          	addi	sp,sp,-16
    80001820:	00113423          	sd	ra,8(sp)
    80001824:	00813023          	sd	s0,0(sp)
    80001828:	01010413          	addi	s0,sp,16
    8000182c:	00007797          	auipc	a5,0x7
    80001830:	6447b783          	ld	a5,1604(a5) # 80008e70 <_ZN3PCB7runningE>
    80001834:	00500713          	li	a4,5
    80001838:	00e7a023          	sw	a4,0(a5)
    running->setState(FINISHED);
    dispatch();
    8000183c:	00000097          	auipc	ra,0x0
    80001840:	eb4080e7          	jalr	-332(ra) # 800016f0 <_ZN3PCB8dispatchEv>
    Riscv::w_a0(0);
    80001844:	00000513          	li	a0,0
    80001848:	00001097          	auipc	ra,0x1
    8000184c:	118080e7          	jalr	280(ra) # 80002960 <_ZN5Riscv4w_a0Em>
}
    80001850:	00813083          	ld	ra,8(sp)
    80001854:	00013403          	ld	s0,0(sp)
    80001858:	01010113          	addi	sp,sp,16
    8000185c:	00008067          	ret

0000000080001860 <_ZN3PCB18sc_thread_dispatchEv>:

void PCB::sc_thread_dispatch() {
    80001860:	ff010113          	addi	sp,sp,-16
    80001864:	00113423          	sd	ra,8(sp)
    80001868:	00813023          	sd	s0,0(sp)
    8000186c:	01010413          	addi	s0,sp,16
    dispatch();
    80001870:	00000097          	auipc	ra,0x0
    80001874:	e80080e7          	jalr	-384(ra) # 800016f0 <_ZN3PCB8dispatchEv>
}
    80001878:	00813083          	ld	ra,8(sp)
    8000187c:	00013403          	ld	s0,0(sp)
    80001880:	01010113          	addi	sp,sp,16
    80001884:	00008067          	ret

0000000080001888 <_ZN3PCB13sc_time_sleepEv>:

void PCB::sc_time_sleep() {
    80001888:	ff010113          	addi	sp,sp,-16
    8000188c:	00113423          	sd	ra,8(sp)
    80001890:	00813023          	sd	s0,0(sp)
    80001894:	01010413          	addi	s0,sp,16
    uint64 time = Riscv::r_a(1);
    80001898:	00100513          	li	a0,1
    8000189c:	00001097          	auipc	ra,0x1
    800018a0:	08c080e7          	jalr	140(ra) # 80002928 <_ZN5Riscv3r_aEm>
    800018a4:	00050793          	mv	a5,a0
    running->setSleepThreshold(time + Riscv::totalTime);
    800018a8:	00007517          	auipc	a0,0x7
    800018ac:	5c853503          	ld	a0,1480(a0) # 80008e70 <_ZN3PCB7runningE>
    800018b0:	00007717          	auipc	a4,0x7
    800018b4:	55073703          	ld	a4,1360(a4) # 80008e00 <_GLOBAL_OFFSET_TABLE_+0x40>
    800018b8:	00073703          	ld	a4,0(a4)
    800018bc:	00e787b3          	add	a5,a5,a4
    bool finished() { return state == FINISHED; }

    uint64 sleepThreshold = 0;
    void setSleepThreshold(uint64 time) { sleepThreshold = time; }
    800018c0:	00f53423          	sd	a5,8(a0)
    Scheduler::putToSleep(running);
    800018c4:	00001097          	auipc	ra,0x1
    800018c8:	a4c080e7          	jalr	-1460(ra) # 80002310 <_ZN9Scheduler10putToSleepEP3PCB>
    dispatch();
    800018cc:	00000097          	auipc	ra,0x0
    800018d0:	e24080e7          	jalr	-476(ra) # 800016f0 <_ZN3PCB8dispatchEv>
    Riscv::w_a0(0);
    800018d4:	00000513          	li	a0,0
    800018d8:	00001097          	auipc	ra,0x1
    800018dc:	088080e7          	jalr	136(ra) # 80002960 <_ZN5Riscv4w_a0Em>
}
    800018e0:	00813083          	ld	ra,8(sp)
    800018e4:	00013403          	ld	s0,0(sp)
    800018e8:	01010113          	addi	sp,sp,16
    800018ec:	00008067          	ret

00000000800018f0 <_ZN3PCB16sc_thread_createEv>:

void PCB::sc_thread_create() {
    800018f0:	fc010113          	addi	sp,sp,-64
    800018f4:	02113c23          	sd	ra,56(sp)
    800018f8:	02813823          	sd	s0,48(sp)
    800018fc:	02913423          	sd	s1,40(sp)
    80001900:	03213023          	sd	s2,32(sp)
    80001904:	01313c23          	sd	s3,24(sp)
    80001908:	01413823          	sd	s4,16(sp)
    8000190c:	01513423          	sd	s5,8(sp)
    80001910:	04010413          	addi	s0,sp,64
    PCB **threadHandle = (PCB**) Riscv::r_a(1);
    80001914:	00100513          	li	a0,1
    80001918:	00001097          	auipc	ra,0x1
    8000191c:	010080e7          	jalr	16(ra) # 80002928 <_ZN5Riscv3r_aEm>
    80001920:	00050913          	mv	s2,a0
    Body start_routine = (Body) Riscv::r_a(2);
    80001924:	00200513          	li	a0,2
    80001928:	00001097          	auipc	ra,0x1
    8000192c:	000080e7          	jalr	ra # 80002928 <_ZN5Riscv3r_aEm>
    80001930:	00050993          	mv	s3,a0
    void* args = (void*) Riscv::r_a(3);
    80001934:	00300513          	li	a0,3
    80001938:	00001097          	auipc	ra,0x1
    8000193c:	ff0080e7          	jalr	-16(ra) # 80002928 <_ZN5Riscv3r_aEm>
    80001940:	00050a13          	mv	s4,a0
    void* stack_space = (void*) Riscv::r_a(4);
    80001944:	00400513          	li	a0,4
    80001948:	00001097          	auipc	ra,0x1
    8000194c:	fe0080e7          	jalr	-32(ra) # 80002928 <_ZN5Riscv3r_aEm>
    80001950:	00050a93          	mv	s5,a0

    PCB *newPCB = new PCB(start_routine, args, stack_space);
    80001954:	06000513          	li	a0,96
    80001958:	00000097          	auipc	ra,0x0
    8000195c:	e74080e7          	jalr	-396(ra) # 800017cc <_ZN3PCBnwEm>
    80001960:	00050493          	mv	s1,a0
    80001964:	00200713          	li	a4,2
    80001968:	000a8693          	mv	a3,s5
    8000196c:	000a0613          	mv	a2,s4
    80001970:	00098593          	mv	a1,s3
    80001974:	00000097          	auipc	ra,0x0
    80001978:	cd0080e7          	jalr	-816(ra) # 80001644 <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    8000197c:	00993023          	sd	s1,0(s2)

    if (newPCB) {
    80001980:	04048063          	beqz	s1,800019c0 <_ZN3PCB16sc_thread_createEv+0xd0>
        newPCB->start();
    80001984:	00048513          	mv	a0,s1
    80001988:	00000097          	auipc	ra,0x0
    8000198c:	d40080e7          	jalr	-704(ra) # 800016c8 <_ZN3PCB5startEv>
        Riscv::w_a0(0);
    80001990:	00000513          	li	a0,0
    80001994:	00001097          	auipc	ra,0x1
    80001998:	fcc080e7          	jalr	-52(ra) # 80002960 <_ZN5Riscv4w_a0Em>
    } else {
        Riscv::w_a0(-1);
    }
}
    8000199c:	03813083          	ld	ra,56(sp)
    800019a0:	03013403          	ld	s0,48(sp)
    800019a4:	02813483          	ld	s1,40(sp)
    800019a8:	02013903          	ld	s2,32(sp)
    800019ac:	01813983          	ld	s3,24(sp)
    800019b0:	01013a03          	ld	s4,16(sp)
    800019b4:	00813a83          	ld	s5,8(sp)
    800019b8:	04010113          	addi	sp,sp,64
    800019bc:	00008067          	ret
        Riscv::w_a0(-1);
    800019c0:	fff00513          	li	a0,-1
    800019c4:	00001097          	auipc	ra,0x1
    800019c8:	f9c080e7          	jalr	-100(ra) # 80002960 <_ZN5Riscv4w_a0Em>
}
    800019cc:	fd1ff06f          	j	8000199c <_ZN3PCB16sc_thread_createEv+0xac>

00000000800019d0 <_ZN3PCB15sc_thread_startEv>:

void PCB::sc_thread_start() {
    800019d0:	ff010113          	addi	sp,sp,-16
    800019d4:	00113423          	sd	ra,8(sp)
    800019d8:	00813023          	sd	s0,0(sp)
    800019dc:	01010413          	addi	s0,sp,16
    PCB* pcb = (PCB*) Riscv::r_a(1);
    800019e0:	00100513          	li	a0,1
    800019e4:	00001097          	auipc	ra,0x1
    800019e8:	f44080e7          	jalr	-188(ra) # 80002928 <_ZN5Riscv3r_aEm>
    if (pcb) {
    800019ec:	02050463          	beqz	a0,80001a14 <_ZN3PCB15sc_thread_startEv+0x44>
        pcb->start();
    800019f0:	00000097          	auipc	ra,0x0
    800019f4:	cd8080e7          	jalr	-808(ra) # 800016c8 <_ZN3PCB5startEv>
        Riscv::w_a0(0);
    800019f8:	00000513          	li	a0,0
    800019fc:	00001097          	auipc	ra,0x1
    80001a00:	f64080e7          	jalr	-156(ra) # 80002960 <_ZN5Riscv4w_a0Em>
    } else {
        Riscv::w_a0(-1);
    }
}
    80001a04:	00813083          	ld	ra,8(sp)
    80001a08:	00013403          	ld	s0,0(sp)
    80001a0c:	01010113          	addi	sp,sp,16
    80001a10:	00008067          	ret
        Riscv::w_a0(-1);
    80001a14:	fff00513          	li	a0,-1
    80001a18:	00001097          	auipc	ra,0x1
    80001a1c:	f48080e7          	jalr	-184(ra) # 80002960 <_ZN5Riscv4w_a0Em>
}
    80001a20:	fe5ff06f          	j	80001a04 <_ZN3PCB15sc_thread_startEv+0x34>

0000000080001a24 <_ZN3PCB15sc_thread_buildEv>:

void PCB::sc_thread_build() {
    80001a24:	fc010113          	addi	sp,sp,-64
    80001a28:	02113c23          	sd	ra,56(sp)
    80001a2c:	02813823          	sd	s0,48(sp)
    80001a30:	02913423          	sd	s1,40(sp)
    80001a34:	03213023          	sd	s2,32(sp)
    80001a38:	01313c23          	sd	s3,24(sp)
    80001a3c:	01413823          	sd	s4,16(sp)
    80001a40:	01513423          	sd	s5,8(sp)
    80001a44:	04010413          	addi	s0,sp,64
    PCB** threadHandle = (PCB**) Riscv::r_a(1);
    80001a48:	00100513          	li	a0,1
    80001a4c:	00001097          	auipc	ra,0x1
    80001a50:	edc080e7          	jalr	-292(ra) # 80002928 <_ZN5Riscv3r_aEm>
    80001a54:	00050913          	mv	s2,a0
    Body start_routine = (Body) Riscv::r_a(2);
    80001a58:	00200513          	li	a0,2
    80001a5c:	00001097          	auipc	ra,0x1
    80001a60:	ecc080e7          	jalr	-308(ra) # 80002928 <_ZN5Riscv3r_aEm>
    80001a64:	00050993          	mv	s3,a0
    void* args = (void*) Riscv::r_a(3);
    80001a68:	00300513          	li	a0,3
    80001a6c:	00001097          	auipc	ra,0x1
    80001a70:	ebc080e7          	jalr	-324(ra) # 80002928 <_ZN5Riscv3r_aEm>
    80001a74:	00050a13          	mv	s4,a0
    void* stack_space = (void*) Riscv::r_a(4);
    80001a78:	00400513          	li	a0,4
    80001a7c:	00001097          	auipc	ra,0x1
    80001a80:	eac080e7          	jalr	-340(ra) # 80002928 <_ZN5Riscv3r_aEm>
    80001a84:	00050a93          	mv	s5,a0

    PCB *newPCB = new PCB(start_routine, args, stack_space);
    80001a88:	06000513          	li	a0,96
    80001a8c:	00000097          	auipc	ra,0x0
    80001a90:	d40080e7          	jalr	-704(ra) # 800017cc <_ZN3PCBnwEm>
    80001a94:	00050493          	mv	s1,a0
    80001a98:	00200713          	li	a4,2
    80001a9c:	000a8693          	mv	a3,s5
    80001aa0:	000a0613          	mv	a2,s4
    80001aa4:	00098593          	mv	a1,s3
    80001aa8:	00000097          	auipc	ra,0x0
    80001aac:	b9c080e7          	jalr	-1124(ra) # 80001644 <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80001ab0:	00993023          	sd	s1,0(s2)

    if (newPCB) Riscv::w_a0(0);
    80001ab4:	02048a63          	beqz	s1,80001ae8 <_ZN3PCB15sc_thread_buildEv+0xc4>
    80001ab8:	00000513          	li	a0,0
    80001abc:	00001097          	auipc	ra,0x1
    80001ac0:	ea4080e7          	jalr	-348(ra) # 80002960 <_ZN5Riscv4w_a0Em>
    else Riscv::w_a0(-1);
}
    80001ac4:	03813083          	ld	ra,56(sp)
    80001ac8:	03013403          	ld	s0,48(sp)
    80001acc:	02813483          	ld	s1,40(sp)
    80001ad0:	02013903          	ld	s2,32(sp)
    80001ad4:	01813983          	ld	s3,24(sp)
    80001ad8:	01013a03          	ld	s4,16(sp)
    80001adc:	00813a83          	ld	s5,8(sp)
    80001ae0:	04010113          	addi	sp,sp,64
    80001ae4:	00008067          	ret
    else Riscv::w_a0(-1);
    80001ae8:	fff00513          	li	a0,-1
    80001aec:	00001097          	auipc	ra,0x1
    80001af0:	e74080e7          	jalr	-396(ra) # 80002960 <_ZN5Riscv4w_a0Em>
}
    80001af4:	fd1ff06f          	j	80001ac4 <_ZN3PCB15sc_thread_buildEv+0xa0>

0000000080001af8 <_ZN3PCB16sc_thread_deleteEv>:

void PCB::sc_thread_delete() {
    80001af8:	fe010113          	addi	sp,sp,-32
    80001afc:	00113c23          	sd	ra,24(sp)
    80001b00:	00813823          	sd	s0,16(sp)
    80001b04:	00913423          	sd	s1,8(sp)
    80001b08:	02010413          	addi	s0,sp,32
    PCB* pcb = (PCB*) Riscv::r_a(1);
    80001b0c:	00100513          	li	a0,1
    80001b10:	00001097          	auipc	ra,0x1
    80001b14:	e18080e7          	jalr	-488(ra) # 80002928 <_ZN5Riscv3r_aEm>
    if (pcb) {
    80001b18:	02050e63          	beqz	a0,80001b54 <_ZN3PCB16sc_thread_deleteEv+0x5c>
    80001b1c:	00050493          	mv	s1,a0
        delete pcb;
    80001b20:	00000097          	auipc	ra,0x0
    80001b24:	b7c080e7          	jalr	-1156(ra) # 8000169c <_ZN3PCBD1Ev>
    80001b28:	00048513          	mv	a0,s1
    80001b2c:	00000097          	auipc	ra,0x0
    80001b30:	cc8080e7          	jalr	-824(ra) # 800017f4 <_ZN3PCBdlEPv>
        Riscv::w_a0(0);
    80001b34:	00000513          	li	a0,0
    80001b38:	00001097          	auipc	ra,0x1
    80001b3c:	e28080e7          	jalr	-472(ra) # 80002960 <_ZN5Riscv4w_a0Em>
    } else {
        Riscv::w_a0(-1);
    }
}
    80001b40:	01813083          	ld	ra,24(sp)
    80001b44:	01013403          	ld	s0,16(sp)
    80001b48:	00813483          	ld	s1,8(sp)
    80001b4c:	02010113          	addi	sp,sp,32
    80001b50:	00008067          	ret
        Riscv::w_a0(-1);
    80001b54:	fff00513          	li	a0,-1
    80001b58:	00001097          	auipc	ra,0x1
    80001b5c:	e08080e7          	jalr	-504(ra) # 80002960 <_ZN5Riscv4w_a0Em>
}
    80001b60:	fe1ff06f          	j	80001b40 <_ZN3PCB16sc_thread_deleteEv+0x48>

0000000080001b64 <_ZN8KConsole10initializeEv>:
#include "../h/KConsole.hpp"

CharBuffer* KConsole::input = nullptr;
CharBuffer* KConsole::output = nullptr;

void KConsole::initialize() {
    80001b64:	fe010113          	addi	sp,sp,-32
    80001b68:	00113c23          	sd	ra,24(sp)
    80001b6c:	00813823          	sd	s0,16(sp)
    80001b70:	00913423          	sd	s1,8(sp)
    80001b74:	01213023          	sd	s2,0(sp)
    80001b78:	02010413          	addi	s0,sp,32
        return 0;
    }

    // memory allocation
    void* operator new(size_t size) {
        return MemoryAllocator::kmalloc(size);
    80001b7c:	00002537          	lui	a0,0x2
    80001b80:	03850513          	addi	a0,a0,56 # 2038 <_entry-0x7fffdfc8>
    80001b84:	00001097          	auipc	ra,0x1
    80001b88:	f9c080e7          	jalr	-100(ra) # 80002b20 <_ZN15MemoryAllocator7kmallocEm>
    80001b8c:	00050493          	mv	s1,a0
        head(0), tail(0), semaphore(KSemaphore(0))
    80001b90:	00053023          	sd	zero,0(a0)
    80001b94:	00053423          	sd	zero,8(a0)
    80001b98:	00000593          	li	a1,0
    80001b9c:	01050513          	addi	a0,a0,16
    80001ba0:	00001097          	auipc	ra,0x1
    80001ba4:	298080e7          	jalr	664(ra) # 80002e38 <_ZN10KSemaphoreC1Ei>
    80001ba8:	00002537          	lui	a0,0x2
    80001bac:	00a487b3          	add	a5,s1,a0
    80001bb0:	0207b423          	sd	zero,40(a5)
    80001bb4:	0207b823          	sd	zero,48(a5)
    input = new CharBuffer();
    80001bb8:	00007797          	auipc	a5,0x7
    80001bbc:	2c97b423          	sd	s1,712(a5) # 80008e80 <_ZN8KConsole5inputE>
        return MemoryAllocator::kmalloc(size);
    80001bc0:	03850513          	addi	a0,a0,56 # 2038 <_entry-0x7fffdfc8>
    80001bc4:	00001097          	auipc	ra,0x1
    80001bc8:	f5c080e7          	jalr	-164(ra) # 80002b20 <_ZN15MemoryAllocator7kmallocEm>
    80001bcc:	00050493          	mv	s1,a0
        head(0), tail(0), semaphore(KSemaphore(0))
    80001bd0:	00053023          	sd	zero,0(a0)
    80001bd4:	00053423          	sd	zero,8(a0)
    80001bd8:	00000593          	li	a1,0
    80001bdc:	01050513          	addi	a0,a0,16
    80001be0:	00001097          	auipc	ra,0x1
    80001be4:	258080e7          	jalr	600(ra) # 80002e38 <_ZN10KSemaphoreC1Ei>
    80001be8:	000027b7          	lui	a5,0x2
    80001bec:	00f487b3          	add	a5,s1,a5
    80001bf0:	0207b423          	sd	zero,40(a5) # 2028 <_entry-0x7fffdfd8>
    80001bf4:	0207b823          	sd	zero,48(a5)
    output = new CharBuffer();
    80001bf8:	00007797          	auipc	a5,0x7
    80001bfc:	2897b823          	sd	s1,656(a5) # 80008e88 <_ZN8KConsole6outputE>
}
    80001c00:	01813083          	ld	ra,24(sp)
    80001c04:	01013403          	ld	s0,16(sp)
    80001c08:	00813483          	ld	s1,8(sp)
    80001c0c:	00013903          	ld	s2,0(sp)
    80001c10:	02010113          	addi	sp,sp,32
    80001c14:	00008067          	ret
    80001c18:	00050913          	mv	s2,a0
    }
    void operator delete(void* ptr) {
        MemoryAllocator::kfree(ptr);
    80001c1c:	00048513          	mv	a0,s1
    80001c20:	00001097          	auipc	ra,0x1
    80001c24:	f28080e7          	jalr	-216(ra) # 80002b48 <_ZN15MemoryAllocator5kfreeEPv>
    80001c28:	00090513          	mv	a0,s2
    80001c2c:	00008097          	auipc	ra,0x8
    80001c30:	3bc080e7          	jalr	956(ra) # 80009fe8 <_Unwind_Resume>
    80001c34:	00050913          	mv	s2,a0
    80001c38:	00048513          	mv	a0,s1
    80001c3c:	00001097          	auipc	ra,0x1
    80001c40:	f0c080e7          	jalr	-244(ra) # 80002b48 <_ZN15MemoryAllocator5kfreeEPv>
    80001c44:	00090513          	mv	a0,s2
    80001c48:	00008097          	auipc	ra,0x8
    80001c4c:	3a0080e7          	jalr	928(ra) # 80009fe8 <_Unwind_Resume>

0000000080001c50 <_ZN8KConsole12kPrintStringEPKc>:

// ----- KERNEL PRINTS -----

void KConsole::kPrintString(const char* string) {
    80001c50:	fe010113          	addi	sp,sp,-32
    80001c54:	00113c23          	sd	ra,24(sp)
    80001c58:	00813823          	sd	s0,16(sp)
    80001c5c:	00913423          	sd	s1,8(sp)
    80001c60:	02010413          	addi	s0,sp,32
    80001c64:	00050493          	mv	s1,a0
    80001c68:	0080006f          	j	80001c70 <_ZN8KConsole12kPrintStringEPKc+0x20>
    while (*string != '\0') {
        output->put(*string);
        string++;
    80001c6c:	00148493          	addi	s1,s1,1
    while (*string != '\0') {
    80001c70:	0004c583          	lbu	a1,0(s1)
    80001c74:	06058463          	beqz	a1,80001cdc <_ZN8KConsole12kPrintStringEPKc+0x8c>
        output->put(*string);
    80001c78:	00007517          	auipc	a0,0x7
    80001c7c:	21053503          	ld	a0,528(a0) # 80008e88 <_ZN8KConsole6outputE>
        pendingGetc--;
    80001c80:	000027b7          	lui	a5,0x2
    80001c84:	00f506b3          	add	a3,a0,a5
    80001c88:	0306b703          	ld	a4,48(a3)
    80001c8c:	fff70713          	addi	a4,a4,-1
    80001c90:	02e6b823          	sd	a4,48(a3)
        return (tail + 1) % bufferSize == head;
    80001c94:	00853683          	ld	a3,8(a0)
    80001c98:	00168713          	addi	a4,a3,1
    80001c9c:	fff78793          	addi	a5,a5,-1 # 1fff <_entry-0x7fffe001>
    80001ca0:	00f777b3          	and	a5,a4,a5
    80001ca4:	00053703          	ld	a4,0(a0)
        if (full()) return -1;
    80001ca8:	fce782e3          	beq	a5,a4,80001c6c <_ZN8KConsole12kPrintStringEPKc+0x1c>
        pendingPutc++;
    80001cac:	00002737          	lui	a4,0x2
    80001cb0:	00e50733          	add	a4,a0,a4
    80001cb4:	02873603          	ld	a2,40(a4) # 2028 <_entry-0x7fffdfd8>
    80001cb8:	00160613          	addi	a2,a2,1
    80001cbc:	02c73423          	sd	a2,40(a4)
        buffer[tail] = c;
    80001cc0:	00d506b3          	add	a3,a0,a3
    80001cc4:	02b68423          	sb	a1,40(a3)
        tail = (tail + 1) % bufferSize;
    80001cc8:	00f53423          	sd	a5,8(a0)
        semaphore.signal();
    80001ccc:	01050513          	addi	a0,a0,16
    80001cd0:	00001097          	auipc	ra,0x1
    80001cd4:	2ec080e7          	jalr	748(ra) # 80002fbc <_ZN10KSemaphore6signalEv>
        return 0;
    80001cd8:	f95ff06f          	j	80001c6c <_ZN8KConsole12kPrintStringEPKc+0x1c>
    }
}
    80001cdc:	01813083          	ld	ra,24(sp)
    80001ce0:	01013403          	ld	s0,16(sp)
    80001ce4:	00813483          	ld	s1,8(sp)
    80001ce8:	02010113          	addi	sp,sp,32
    80001cec:	00008067          	ret

0000000080001cf0 <_ZN8KConsole9kPrintIntEii>:

void KConsole::kPrintInt(int x, int base) {
    80001cf0:	fb010113          	addi	sp,sp,-80
    80001cf4:	04113423          	sd	ra,72(sp)
    80001cf8:	04813023          	sd	s0,64(sp)
    80001cfc:	02913c23          	sd	s1,56(sp)
    80001d00:	05010413          	addi	s0,sp,80
    bool neg = false;
    if (x < 0) neg = true, x = -x;
    80001d04:	06054a63          	bltz	a0,80001d78 <_ZN8KConsole9kPrintIntEii+0x88>
    bool neg = false;
    80001d08:	00000813          	li	a6,0
    char digits[] = "0123456789ABCDEF";
    80001d0c:	00005797          	auipc	a5,0x5
    80001d10:	31478793          	addi	a5,a5,788 # 80007020 <CONSOLE_STATUS+0x10>
    80001d14:	0007b703          	ld	a4,0(a5)
    80001d18:	fce43423          	sd	a4,-56(s0)
    80001d1c:	0087b703          	ld	a4,8(a5)
    80001d20:	fce43823          	sd	a4,-48(s0)
    80001d24:	0107c783          	lbu	a5,16(a5)
    80001d28:	fcf40c23          	sb	a5,-40(s0)
    char buf[16];
    int n = 0;
    80001d2c:	00000793          	li	a5,0
    do buf[n++] = digits[x % base];
    80001d30:	02b5673b          	remw	a4,a0,a1
    80001d34:	00078693          	mv	a3,a5
    80001d38:	0017879b          	addiw	a5,a5,1
    80001d3c:	fe040613          	addi	a2,s0,-32
    80001d40:	00e60733          	add	a4,a2,a4
    80001d44:	fe874603          	lbu	a2,-24(a4)
    80001d48:	fe040713          	addi	a4,s0,-32
    80001d4c:	00d70733          	add	a4,a4,a3
    80001d50:	fcc70c23          	sb	a2,-40(a4)
    while ((x /= base) != 0);
    80001d54:	02b5453b          	divw	a0,a0,a1
    80001d58:	fc051ce3          	bnez	a0,80001d30 <_ZN8KConsole9kPrintIntEii+0x40>
    if (neg) buf[n++] = '-';
    80001d5c:	02080663          	beqz	a6,80001d88 <_ZN8KConsole9kPrintIntEii+0x98>
    80001d60:	fe040713          	addi	a4,s0,-32
    80001d64:	00f707b3          	add	a5,a4,a5
    80001d68:	02d00713          	li	a4,45
    80001d6c:	fce78c23          	sb	a4,-40(a5)
    80001d70:	0026879b          	addiw	a5,a3,2
    80001d74:	0140006f          	j	80001d88 <_ZN8KConsole9kPrintIntEii+0x98>
    if (x < 0) neg = true, x = -x;
    80001d78:	40a0053b          	negw	a0,a0
    80001d7c:	00100813          	li	a6,1
    80001d80:	f8dff06f          	j	80001d0c <_ZN8KConsole9kPrintIntEii+0x1c>
    while (n--) output->put(buf[n]);
    80001d84:	00048793          	mv	a5,s1
    80001d88:	fff7849b          	addiw	s1,a5,-1
    80001d8c:	06078a63          	beqz	a5,80001e00 <_ZN8KConsole9kPrintIntEii+0x110>
    80001d90:	00007517          	auipc	a0,0x7
    80001d94:	0f853503          	ld	a0,248(a0) # 80008e88 <_ZN8KConsole6outputE>
    80001d98:	fe040793          	addi	a5,s0,-32
    80001d9c:	009787b3          	add	a5,a5,s1
    80001da0:	fd87c583          	lbu	a1,-40(a5)
        pendingGetc--;
    80001da4:	000027b7          	lui	a5,0x2
    80001da8:	00f506b3          	add	a3,a0,a5
    80001dac:	0306b703          	ld	a4,48(a3)
    80001db0:	fff70713          	addi	a4,a4,-1
    80001db4:	02e6b823          	sd	a4,48(a3)
        return (tail + 1) % bufferSize == head;
    80001db8:	00853683          	ld	a3,8(a0)
    80001dbc:	00168713          	addi	a4,a3,1
    80001dc0:	fff78793          	addi	a5,a5,-1 # 1fff <_entry-0x7fffe001>
    80001dc4:	00f777b3          	and	a5,a4,a5
    80001dc8:	00053703          	ld	a4,0(a0)
        if (full()) return -1;
    80001dcc:	fae78ce3          	beq	a5,a4,80001d84 <_ZN8KConsole9kPrintIntEii+0x94>
        pendingPutc++;
    80001dd0:	00002737          	lui	a4,0x2
    80001dd4:	00e50733          	add	a4,a0,a4
    80001dd8:	02873603          	ld	a2,40(a4) # 2028 <_entry-0x7fffdfd8>
    80001ddc:	00160613          	addi	a2,a2,1
    80001de0:	02c73423          	sd	a2,40(a4)
        buffer[tail] = c;
    80001de4:	00d506b3          	add	a3,a0,a3
    80001de8:	02b68423          	sb	a1,40(a3)
        tail = (tail + 1) % bufferSize;
    80001dec:	00f53423          	sd	a5,8(a0)
        semaphore.signal();
    80001df0:	01050513          	addi	a0,a0,16
    80001df4:	00001097          	auipc	ra,0x1
    80001df8:	1c8080e7          	jalr	456(ra) # 80002fbc <_ZN10KSemaphore6signalEv>
        return 0;
    80001dfc:	f89ff06f          	j	80001d84 <_ZN8KConsole9kPrintIntEii+0x94>
}
    80001e00:	04813083          	ld	ra,72(sp)
    80001e04:	04013403          	ld	s0,64(sp)
    80001e08:	03813483          	ld	s1,56(sp)
    80001e0c:	05010113          	addi	sp,sp,80
    80001e10:	00008067          	ret

0000000080001e14 <_ZN8KConsole24getCharactersFromConsoleEv>:


// ----- Riscv inline implementations -----

inline REG Riscv::console_status() {
    uint64 x = CONSOLE_STATUS;
    80001e14:	00007797          	auipc	a5,0x7
    80001e18:	fbc7b783          	ld	a5,-68(a5) # 80008dd0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001e1c:	0007b783          	ld	a5,0(a5)
    __asm__ volatile("mv a0, %0"::"r"(x));
    80001e20:	00078513          	mv	a0,a5
    __asm__ volatile("lb a1, 0(a0)");
    80001e24:	00050583          	lb	a1,0(a0)
    uint64 operation;
    __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80001e28:	00058793          	mv	a5,a1

// ----- I/O HANDLERS -----

// interrupt
void KConsole::getCharactersFromConsole() {
    bool readable = Riscv::console_status() & STATUS_READ;
    80001e2c:	0017f793          	andi	a5,a5,1
    if (readable) {
    80001e30:	00079463          	bnez	a5,80001e38 <_ZN8KConsole24getCharactersFromConsoleEv+0x24>
    80001e34:	00008067          	ret
    return operation;
}
inline REG Riscv::console_receive() {
    uint64 x = CONSOLE_TX_DATA;
    80001e38:	00007797          	auipc	a5,0x7
    80001e3c:	fb07b783          	ld	a5,-80(a5) # 80008de8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001e40:	0007b783          	ld	a5,0(a5)
    __asm__ volatile("mv a0, %0"::"r"(x));
    80001e44:	00078513          	mv	a0,a5
    __asm__ volatile("lb a1,0(a0)");
    80001e48:	00050583          	lb	a1,0(a0)
    char c;
    __asm__ volatile("mv %0, a1" :  "=r"(c));
    80001e4c:	00058593          	mv	a1,a1
        char c = Riscv::console_receive();
        // if (pendingGetc > 0)
        input->put(c);
    80001e50:	00007517          	auipc	a0,0x7
    80001e54:	03053503          	ld	a0,48(a0) # 80008e80 <_ZN8KConsole5inputE>
        pendingGetc--;
    80001e58:	000027b7          	lui	a5,0x2
    80001e5c:	00f506b3          	add	a3,a0,a5
    80001e60:	0306b703          	ld	a4,48(a3)
    80001e64:	fff70713          	addi	a4,a4,-1
    80001e68:	02e6b823          	sd	a4,48(a3)
        return (tail + 1) % bufferSize == head;
    80001e6c:	00853683          	ld	a3,8(a0)
    80001e70:	00168713          	addi	a4,a3,1
    80001e74:	fff78793          	addi	a5,a5,-1 # 1fff <_entry-0x7fffe001>
    80001e78:	00f777b3          	and	a5,a4,a5
    80001e7c:	00053703          	ld	a4,0(a0)
        if (full()) return -1;
    80001e80:	fae78ae3          	beq	a5,a4,80001e34 <_ZN8KConsole24getCharactersFromConsoleEv+0x20>
void KConsole::getCharactersFromConsole() {
    80001e84:	ff010113          	addi	sp,sp,-16
    80001e88:	00113423          	sd	ra,8(sp)
    80001e8c:	00813023          	sd	s0,0(sp)
    80001e90:	01010413          	addi	s0,sp,16
        pendingPutc++;
    80001e94:	00002737          	lui	a4,0x2
    80001e98:	00e50733          	add	a4,a0,a4
    80001e9c:	02873603          	ld	a2,40(a4) # 2028 <_entry-0x7fffdfd8>
    80001ea0:	00160613          	addi	a2,a2,1
    80001ea4:	02c73423          	sd	a2,40(a4)
        buffer[tail] = c;
    80001ea8:	00d506b3          	add	a3,a0,a3
    80001eac:	02b68423          	sb	a1,40(a3)
        tail = (tail + 1) % bufferSize;
    80001eb0:	00f53423          	sd	a5,8(a0)
        semaphore.signal();
    80001eb4:	01050513          	addi	a0,a0,16
    80001eb8:	00001097          	auipc	ra,0x1
    80001ebc:	104080e7          	jalr	260(ra) # 80002fbc <_ZN10KSemaphore6signalEv>
    }
}
    80001ec0:	00813083          	ld	ra,8(sp)
    80001ec4:	00013403          	ld	s0,0(sp)
    80001ec8:	01010113          	addi	sp,sp,16
    80001ecc:	00008067          	ret

0000000080001ed0 <_ZN8KConsole23sendCharactersToConsoleEPv>:

#include "../h/syscall_c.hpp"
#include "../h/Kernel.hpp"

// thread
void KConsole::sendCharactersToConsole(void* _) {
    80001ed0:	fe010113          	addi	sp,sp,-32
    80001ed4:	00113c23          	sd	ra,24(sp)
    80001ed8:	00813823          	sd	s0,16(sp)
    80001edc:	02010413          	addi	s0,sp,32
    80001ee0:	02c0006f          	j	80001f0c <_ZN8KConsole23sendCharactersToConsoleEPv+0x3c>
    while(true) {

        if (Kernel::finished() && output->empty())
    80001ee4:	00007797          	auipc	a5,0x7
    80001ee8:	fa47b783          	ld	a5,-92(a5) # 80008e88 <_ZN8KConsole6outputE>
        return head == tail;
    80001eec:	0007b703          	ld	a4,0(a5)
    80001ef0:	0087b783          	ld	a5,8(a5)
    80001ef4:	02f71663          	bne	a4,a5,80001f20 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
            thread_exit();
    80001ef8:	fffff097          	auipc	ra,0xfffff
    80001efc:	444080e7          	jalr	1092(ra) # 8000133c <_Z11thread_exitv>
    80001f00:	0200006f          	j	80001f20 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
            char volatile c = getc_output();
            Riscv::console_send(c);
        }

        else {
            thread_dispatch();
    80001f04:	fffff097          	auipc	ra,0xfffff
    80001f08:	464080e7          	jalr	1124(ra) # 80001368 <_Z15thread_dispatchv>

class Kernel {

public:
    static void main();
    static bool finished() { return state == FINISHED; }
    80001f0c:	00007797          	auipc	a5,0x7
    80001f10:	ed47b783          	ld	a5,-300(a5) # 80008de0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001f14:	0007a703          	lw	a4,0(a5)
        if (Kernel::finished() && output->empty())
    80001f18:	00200793          	li	a5,2
    80001f1c:	fcf704e3          	beq	a4,a5,80001ee4 <_ZN8KConsole23sendCharactersToConsoleEPv+0x14>
    uint64 x = CONSOLE_STATUS;
    80001f20:	00007797          	auipc	a5,0x7
    80001f24:	eb07b783          	ld	a5,-336(a5) # 80008dd0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001f28:	0007b783          	ld	a5,0(a5)
    __asm__ volatile("mv a0, %0"::"r"(x));
    80001f2c:	00078513          	mv	a0,a5
    __asm__ volatile("lb a1, 0(a0)");
    80001f30:	00050583          	lb	a1,0(a0)
    __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80001f34:	00058793          	mv	a5,a1
        bool writable = Riscv::console_status() & STATUS_WRITE;
    80001f38:	0207f793          	andi	a5,a5,32
        if (writable && !output->empty()) {
    80001f3c:	fc0784e3          	beqz	a5,80001f04 <_ZN8KConsole23sendCharactersToConsoleEPv+0x34>
    80001f40:	00007797          	auipc	a5,0x7
    80001f44:	f487b783          	ld	a5,-184(a5) # 80008e88 <_ZN8KConsole6outputE>
    80001f48:	0007b703          	ld	a4,0(a5)
    80001f4c:	0087b783          	ld	a5,8(a5)
    80001f50:	faf70ae3          	beq	a4,a5,80001f04 <_ZN8KConsole23sendCharactersToConsoleEPv+0x34>
            char volatile c = getc_output();
    80001f54:	fffff097          	auipc	ra,0xfffff
    80001f58:	668080e7          	jalr	1640(ra) # 800015bc <_Z11getc_outputv>
    80001f5c:	fea407a3          	sb	a0,-17(s0)
            Riscv::console_send(c);
    80001f60:	fef44783          	lbu	a5,-17(s0)
    80001f64:	0ff7f793          	andi	a5,a5,255
    return c;
}
inline void Riscv::console_send(REG c) {
    REG x = CONSOLE_RX_DATA;
    80001f68:	00007717          	auipc	a4,0x7
    80001f6c:	e6073703          	ld	a4,-416(a4) # 80008dc8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001f70:	00073703          	ld	a4,0(a4)
    __asm__ volatile("mv a0, %0"::"r"(x));
    80001f74:	00070513          	mv	a0,a4
    __asm__ volatile("mv a1, %0" :  :"r"((uint64)c));
    80001f78:	00078593          	mv	a1,a5
    __asm__ volatile("sb a1,0(a0)");
    80001f7c:	00b50023          	sb	a1,0(a0)
}
    80001f80:	f8dff06f          	j	80001f0c <_ZN8KConsole23sendCharactersToConsoleEPv+0x3c>

0000000080001f84 <_ZN8KConsole7sc_getcEv>:
    }
}

// ----- SYSTEM CALLS -----

void KConsole::sc_getc() {
    80001f84:	fe010113          	addi	sp,sp,-32
    80001f88:	00113c23          	sd	ra,24(sp)
    80001f8c:	00813823          	sd	s0,16(sp)
    80001f90:	00913423          	sd	s1,8(sp)
    80001f94:	01213023          	sd	s2,0(sp)
    80001f98:	02010413          	addi	s0,sp,32
    char c = input->get();
    80001f9c:	00007497          	auipc	s1,0x7
    80001fa0:	ee44b483          	ld	s1,-284(s1) # 80008e80 <_ZN8KConsole5inputE>
        pendingGetc++;
    80001fa4:	000027b7          	lui	a5,0x2
    80001fa8:	00f487b3          	add	a5,s1,a5
    80001fac:	0307b703          	ld	a4,48(a5) # 2030 <_entry-0x7fffdfd0>
    80001fb0:	00170713          	addi	a4,a4,1
    80001fb4:	02e7b823          	sd	a4,48(a5)
        semaphore.wait();
    80001fb8:	01048513          	addi	a0,s1,16
    80001fbc:	00001097          	auipc	ra,0x1
    80001fc0:	fb8080e7          	jalr	-72(ra) # 80002f74 <_ZN10KSemaphore4waitEv>
        return head == tail;
    80001fc4:	0004b783          	ld	a5,0(s1)
    80001fc8:	0084b703          	ld	a4,8(s1)
        if (empty()) return -1;
    80001fcc:	06e78263          	beq	a5,a4,80002030 <_ZN8KConsole7sc_getcEv+0xac>
        char c = buffer[head];
    80001fd0:	00f48733          	add	a4,s1,a5
    80001fd4:	02874903          	lbu	s2,40(a4)
        head = (head + 1) % bufferSize;
    80001fd8:	00178793          	addi	a5,a5,1
    80001fdc:	00002737          	lui	a4,0x2
    80001fe0:	fff70693          	addi	a3,a4,-1 # 1fff <_entry-0x7fffe001>
    80001fe4:	00d7f7b3          	and	a5,a5,a3
    80001fe8:	00f4b023          	sd	a5,0(s1)
        pendingPutc--;
    80001fec:	00e484b3          	add	s1,s1,a4
    80001ff0:	0284b783          	ld	a5,40(s1)
    80001ff4:	fff78793          	addi	a5,a5,-1
    80001ff8:	02f4b423          	sd	a5,40(s1)
    if (c != 27) // ESC = 27
    80001ffc:	01b00793          	li	a5,27
    80002000:	02f91c63          	bne	s2,a5,80002038 <_ZN8KConsole7sc_getcEv+0xb4>
        output->put(c);
    if (c == 13) // CR = 13, LF = 10
    80002004:	00d00793          	li	a5,13
    80002008:	08f90a63          	beq	s2,a5,8000209c <_ZN8KConsole7sc_getcEv+0x118>
        output->put(10);
    Riscv::w_a0((uint64)c);
    8000200c:	00090513          	mv	a0,s2
    80002010:	00001097          	auipc	ra,0x1
    80002014:	950080e7          	jalr	-1712(ra) # 80002960 <_ZN5Riscv4w_a0Em>
}
    80002018:	01813083          	ld	ra,24(sp)
    8000201c:	01013403          	ld	s0,16(sp)
    80002020:	00813483          	ld	s1,8(sp)
    80002024:	00013903          	ld	s2,0(sp)
    80002028:	02010113          	addi	sp,sp,32
    8000202c:	00008067          	ret
        if (empty()) return -1;
    80002030:	0ff00913          	li	s2,255
    80002034:	fc9ff06f          	j	80001ffc <_ZN8KConsole7sc_getcEv+0x78>
        output->put(c);
    80002038:	00007517          	auipc	a0,0x7
    8000203c:	e5053503          	ld	a0,-432(a0) # 80008e88 <_ZN8KConsole6outputE>
        pendingGetc--;
    80002040:	000027b7          	lui	a5,0x2
    80002044:	00f506b3          	add	a3,a0,a5
    80002048:	0306b703          	ld	a4,48(a3)
    8000204c:	fff70713          	addi	a4,a4,-1
    80002050:	02e6b823          	sd	a4,48(a3)
        return (tail + 1) % bufferSize == head;
    80002054:	00853683          	ld	a3,8(a0)
    80002058:	00168713          	addi	a4,a3,1
    8000205c:	fff78793          	addi	a5,a5,-1 # 1fff <_entry-0x7fffe001>
    80002060:	00f777b3          	and	a5,a4,a5
    80002064:	00053703          	ld	a4,0(a0)
        if (full()) return -1;
    80002068:	f8e78ee3          	beq	a5,a4,80002004 <_ZN8KConsole7sc_getcEv+0x80>
        pendingPutc++;
    8000206c:	00002737          	lui	a4,0x2
    80002070:	00e50733          	add	a4,a0,a4
    80002074:	02873603          	ld	a2,40(a4) # 2028 <_entry-0x7fffdfd8>
    80002078:	00160613          	addi	a2,a2,1
    8000207c:	02c73423          	sd	a2,40(a4)
        buffer[tail] = c;
    80002080:	00d506b3          	add	a3,a0,a3
    80002084:	03268423          	sb	s2,40(a3)
        tail = (tail + 1) % bufferSize;
    80002088:	00f53423          	sd	a5,8(a0)
        semaphore.signal();
    8000208c:	01050513          	addi	a0,a0,16
    80002090:	00001097          	auipc	ra,0x1
    80002094:	f2c080e7          	jalr	-212(ra) # 80002fbc <_ZN10KSemaphore6signalEv>
        return 0;
    80002098:	f6dff06f          	j	80002004 <_ZN8KConsole7sc_getcEv+0x80>
        output->put(10);
    8000209c:	00007517          	auipc	a0,0x7
    800020a0:	dec53503          	ld	a0,-532(a0) # 80008e88 <_ZN8KConsole6outputE>
        pendingGetc--;
    800020a4:	000027b7          	lui	a5,0x2
    800020a8:	00f506b3          	add	a3,a0,a5
    800020ac:	0306b703          	ld	a4,48(a3)
    800020b0:	fff70713          	addi	a4,a4,-1
    800020b4:	02e6b823          	sd	a4,48(a3)
        return (tail + 1) % bufferSize == head;
    800020b8:	00853683          	ld	a3,8(a0)
    800020bc:	00168713          	addi	a4,a3,1
    800020c0:	fff78793          	addi	a5,a5,-1 # 1fff <_entry-0x7fffe001>
    800020c4:	00f777b3          	and	a5,a4,a5
    800020c8:	00053703          	ld	a4,0(a0)
        if (full()) return -1;
    800020cc:	f4e780e3          	beq	a5,a4,8000200c <_ZN8KConsole7sc_getcEv+0x88>
        pendingPutc++;
    800020d0:	00002737          	lui	a4,0x2
    800020d4:	00e50733          	add	a4,a0,a4
    800020d8:	02873603          	ld	a2,40(a4) # 2028 <_entry-0x7fffdfd8>
    800020dc:	00160613          	addi	a2,a2,1
    800020e0:	02c73423          	sd	a2,40(a4)
        buffer[tail] = c;
    800020e4:	00d506b3          	add	a3,a0,a3
    800020e8:	00a00713          	li	a4,10
    800020ec:	02e68423          	sb	a4,40(a3)
        tail = (tail + 1) % bufferSize;
    800020f0:	00f53423          	sd	a5,8(a0)
        semaphore.signal();
    800020f4:	01050513          	addi	a0,a0,16
    800020f8:	00001097          	auipc	ra,0x1
    800020fc:	ec4080e7          	jalr	-316(ra) # 80002fbc <_ZN10KSemaphore6signalEv>
        return 0;
    80002100:	f0dff06f          	j	8000200c <_ZN8KConsole7sc_getcEv+0x88>

0000000080002104 <_ZN8KConsole7sc_putcEv>:

void KConsole::sc_putc() {
    80002104:	ff010113          	addi	sp,sp,-16
    80002108:	00113423          	sd	ra,8(sp)
    8000210c:	00813023          	sd	s0,0(sp)
    80002110:	01010413          	addi	s0,sp,16
    char c = (char) Riscv::r_a(1);
    80002114:	00100513          	li	a0,1
    80002118:	00001097          	auipc	ra,0x1
    8000211c:	810080e7          	jalr	-2032(ra) # 80002928 <_ZN5Riscv3r_aEm>
    80002120:	0ff57613          	andi	a2,a0,255
    output->put(c);
    80002124:	00007517          	auipc	a0,0x7
    80002128:	d6453503          	ld	a0,-668(a0) # 80008e88 <_ZN8KConsole6outputE>
        pendingGetc--;
    8000212c:	000027b7          	lui	a5,0x2
    80002130:	00f506b3          	add	a3,a0,a5
    80002134:	0306b703          	ld	a4,48(a3)
    80002138:	fff70713          	addi	a4,a4,-1
    8000213c:	02e6b823          	sd	a4,48(a3)
        return (tail + 1) % bufferSize == head;
    80002140:	00853683          	ld	a3,8(a0)
    80002144:	00168713          	addi	a4,a3,1
    80002148:	fff78793          	addi	a5,a5,-1 # 1fff <_entry-0x7fffe001>
    8000214c:	00f777b3          	and	a5,a4,a5
    80002150:	00053703          	ld	a4,0(a0)
        if (full()) return -1;
    80002154:	02e78863          	beq	a5,a4,80002184 <_ZN8KConsole7sc_putcEv+0x80>
        pendingPutc++;
    80002158:	00002737          	lui	a4,0x2
    8000215c:	00e50733          	add	a4,a0,a4
    80002160:	02873583          	ld	a1,40(a4) # 2028 <_entry-0x7fffdfd8>
    80002164:	00158593          	addi	a1,a1,1
    80002168:	02b73423          	sd	a1,40(a4)
        buffer[tail] = c;
    8000216c:	00d506b3          	add	a3,a0,a3
    80002170:	02c68423          	sb	a2,40(a3)
        tail = (tail + 1) % bufferSize;
    80002174:	00f53423          	sd	a5,8(a0)
        semaphore.signal();
    80002178:	01050513          	addi	a0,a0,16
    8000217c:	00001097          	auipc	ra,0x1
    80002180:	e40080e7          	jalr	-448(ra) # 80002fbc <_ZN10KSemaphore6signalEv>
}
    80002184:	00813083          	ld	ra,8(sp)
    80002188:	00013403          	ld	s0,0(sp)
    8000218c:	01010113          	addi	sp,sp,16
    80002190:	00008067          	ret

0000000080002194 <_ZN8KConsole14sc_getc_outputEv>:

void KConsole::sc_getc_output() {
    80002194:	fe010113          	addi	sp,sp,-32
    80002198:	00113c23          	sd	ra,24(sp)
    8000219c:	00813823          	sd	s0,16(sp)
    800021a0:	00913423          	sd	s1,8(sp)
    800021a4:	02010413          	addi	s0,sp,32
    char c = output->get();
    800021a8:	00007497          	auipc	s1,0x7
    800021ac:	ce04b483          	ld	s1,-800(s1) # 80008e88 <_ZN8KConsole6outputE>
        pendingGetc++;
    800021b0:	000027b7          	lui	a5,0x2
    800021b4:	00f487b3          	add	a5,s1,a5
    800021b8:	0307b703          	ld	a4,48(a5) # 2030 <_entry-0x7fffdfd0>
    800021bc:	00170713          	addi	a4,a4,1
    800021c0:	02e7b823          	sd	a4,48(a5)
        semaphore.wait();
    800021c4:	01048513          	addi	a0,s1,16
    800021c8:	00001097          	auipc	ra,0x1
    800021cc:	dac080e7          	jalr	-596(ra) # 80002f74 <_ZN10KSemaphore4waitEv>
        return head == tail;
    800021d0:	0004b783          	ld	a5,0(s1)
    800021d4:	0084b703          	ld	a4,8(s1)
        if (empty()) return -1;
    800021d8:	04e78663          	beq	a5,a4,80002224 <_ZN8KConsole14sc_getc_outputEv+0x90>
        char c = buffer[head];
    800021dc:	00f48733          	add	a4,s1,a5
    800021e0:	02874503          	lbu	a0,40(a4)
        head = (head + 1) % bufferSize;
    800021e4:	00178793          	addi	a5,a5,1
    800021e8:	00002737          	lui	a4,0x2
    800021ec:	fff70693          	addi	a3,a4,-1 # 1fff <_entry-0x7fffe001>
    800021f0:	00d7f7b3          	and	a5,a5,a3
    800021f4:	00f4b023          	sd	a5,0(s1)
        pendingPutc--;
    800021f8:	00e484b3          	add	s1,s1,a4
    800021fc:	0284b783          	ld	a5,40(s1)
    80002200:	fff78793          	addi	a5,a5,-1
    80002204:	02f4b423          	sd	a5,40(s1)
    Riscv::w_a0((uint64)c);
    80002208:	00000097          	auipc	ra,0x0
    8000220c:	758080e7          	jalr	1880(ra) # 80002960 <_ZN5Riscv4w_a0Em>
    80002210:	01813083          	ld	ra,24(sp)
    80002214:	01013403          	ld	s0,16(sp)
    80002218:	00813483          	ld	s1,8(sp)
    8000221c:	02010113          	addi	sp,sp,32
    80002220:	00008067          	ret
        if (empty()) return -1;
    80002224:	0ff00513          	li	a0,255
    80002228:	fe1ff06f          	j	80002208 <_ZN8KConsole14sc_getc_outputEv+0x74>

000000008000222c <_Z41__static_initialization_and_destruction_0ii>:

void Scheduler::checkAwake() {
    while (sleeping.front() && Riscv::totalTime >= sleeping.front()->sleepThreshold) {
        Scheduler::put(sleeping.pop());
    }
}
    8000222c:	ff010113          	addi	sp,sp,-16
    80002230:	00813423          	sd	s0,8(sp)
    80002234:	01010413          	addi	s0,sp,16
    80002238:	00100793          	li	a5,1
    8000223c:	00f50863          	beq	a0,a5,8000224c <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002240:	00813403          	ld	s0,8(sp)
    80002244:	01010113          	addi	sp,sp,16
    80002248:	00008067          	ret
    8000224c:	000107b7          	lui	a5,0x10
    80002250:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002254:	fef596e3          	bne	a1,a5,80002240 <_Z41__static_initialization_and_destruction_0ii+0x14>
#include "PCB.hpp" // making use of PCB::next

class PCBQueue {

public:
    PCBQueue(): head(nullptr), tail(nullptr) {}
    80002258:	00007797          	auipc	a5,0x7
    8000225c:	c3878793          	addi	a5,a5,-968 # 80008e90 <_ZN9Scheduler5readyE>
    80002260:	0007b023          	sd	zero,0(a5)
    80002264:	0007b423          	sd	zero,8(a5)
    80002268:	0007b823          	sd	zero,16(a5)
    8000226c:	0007bc23          	sd	zero,24(a5)
    80002270:	fd1ff06f          	j	80002240 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002274 <_ZN9Scheduler3putEP3PCB>:
void Scheduler::put(PCB *pcb) {
    80002274:	ff010113          	addi	sp,sp,-16
    80002278:	00813423          	sd	s0,8(sp)
    8000227c:	01010413          	addi	s0,sp,16
    void setState(State s) { state = s; }
    80002280:	00100793          	li	a5,1
    80002284:	00f52023          	sw	a5,0(a0)

    void push(PCB* pcb) {
        pcb->next = nullptr;
    80002288:	04053423          	sd	zero,72(a0)
        if (!head) {
    8000228c:	00007797          	auipc	a5,0x7
    80002290:	c047b783          	ld	a5,-1020(a5) # 80008e90 <_ZN9Scheduler5readyE>
    80002294:	02078263          	beqz	a5,800022b8 <_ZN9Scheduler3putEP3PCB+0x44>
            head = tail = pcb;
        } else {
            tail->next = pcb;
    80002298:	00007797          	auipc	a5,0x7
    8000229c:	bf878793          	addi	a5,a5,-1032 # 80008e90 <_ZN9Scheduler5readyE>
    800022a0:	0087b703          	ld	a4,8(a5)
    800022a4:	04a73423          	sd	a0,72(a4)
            tail = pcb;
    800022a8:	00a7b423          	sd	a0,8(a5)
}
    800022ac:	00813403          	ld	s0,8(sp)
    800022b0:	01010113          	addi	sp,sp,16
    800022b4:	00008067          	ret
            head = tail = pcb;
    800022b8:	00007797          	auipc	a5,0x7
    800022bc:	bd878793          	addi	a5,a5,-1064 # 80008e90 <_ZN9Scheduler5readyE>
    800022c0:	00a7b423          	sd	a0,8(a5)
    800022c4:	00a7b023          	sd	a0,0(a5)
    800022c8:	fe5ff06f          	j	800022ac <_ZN9Scheduler3putEP3PCB+0x38>

00000000800022cc <_ZN9Scheduler3getEv>:
PCB* Scheduler::get() {
    800022cc:	ff010113          	addi	sp,sp,-16
    800022d0:	00813423          	sd	s0,8(sp)
    800022d4:	01010413          	addi	s0,sp,16
        }
    }

    PCB* pop() {
        if (!head)
    800022d8:	00007517          	auipc	a0,0x7
    800022dc:	bb853503          	ld	a0,-1096(a0) # 80008e90 <_ZN9Scheduler5readyE>
    800022e0:	00050c63          	beqz	a0,800022f8 <_ZN9Scheduler3getEv+0x2c>
            return nullptr;
        PCB* ret = head;
        head = head->next;
    800022e4:	04853783          	ld	a5,72(a0)
    800022e8:	00007717          	auipc	a4,0x7
    800022ec:	baf73423          	sd	a5,-1112(a4) # 80008e90 <_ZN9Scheduler5readyE>
        if (!head) tail = nullptr;
    800022f0:	00078a63          	beqz	a5,80002304 <_ZN9Scheduler3getEv+0x38>
        ret->next = nullptr;
    800022f4:	04053423          	sd	zero,72(a0)
}
    800022f8:	00813403          	ld	s0,8(sp)
    800022fc:	01010113          	addi	sp,sp,16
    80002300:	00008067          	ret
        if (!head) tail = nullptr;
    80002304:	00007797          	auipc	a5,0x7
    80002308:	b807ba23          	sd	zero,-1132(a5) # 80008e98 <_ZN9Scheduler5readyE+0x8>
    8000230c:	fe9ff06f          	j	800022f4 <_ZN9Scheduler3getEv+0x28>

0000000080002310 <_ZN9Scheduler10putToSleepEP3PCB>:
void Scheduler::putToSleep(PCB* pcb) {
    80002310:	ff010113          	addi	sp,sp,-16
    80002314:	00813423          	sd	s0,8(sp)
    80002318:	01010413          	addi	s0,sp,16
    8000231c:	00400793          	li	a5,4
    80002320:	00f52023          	sw	a5,0(a0)
        return head;
    }

    void insert(PCB* pcb) { // with priority (for sleep)
        PCB* prev = nullptr;
        PCB* curr = head;
    80002324:	00007797          	auipc	a5,0x7
    80002328:	b7c7b783          	ld	a5,-1156(a5) # 80008ea0 <_ZN9Scheduler8sleepingE>
        PCB* prev = nullptr;
    8000232c:	00000613          	li	a2,0
        while (curr && pcb->sleepThreshold > curr->sleepThreshold) {
    80002330:	00078e63          	beqz	a5,8000234c <_ZN9Scheduler10putToSleepEP3PCB+0x3c>
    80002334:	00853683          	ld	a3,8(a0)
    80002338:	0087b703          	ld	a4,8(a5)
    8000233c:	00d77863          	bgeu	a4,a3,8000234c <_ZN9Scheduler10putToSleepEP3PCB+0x3c>
            prev = curr;
    80002340:	00078613          	mv	a2,a5
            curr = curr->next;
    80002344:	0487b783          	ld	a5,72(a5)
        while (curr && pcb->sleepThreshold > curr->sleepThreshold) {
    80002348:	fe9ff06f          	j	80002330 <_ZN9Scheduler10putToSleepEP3PCB+0x20>
        }
        pcb->next = curr;
    8000234c:	04f53423          	sd	a5,72(a0)
        if (!prev) head = pcb;
    80002350:	00060c63          	beqz	a2,80002368 <_ZN9Scheduler10putToSleepEP3PCB+0x58>
        else prev->next = pcb;
    80002354:	04a63423          	sd	a0,72(a2)
        if (!curr) tail = pcb;
    80002358:	00078e63          	beqz	a5,80002374 <_ZN9Scheduler10putToSleepEP3PCB+0x64>
}
    8000235c:	00813403          	ld	s0,8(sp)
    80002360:	01010113          	addi	sp,sp,16
    80002364:	00008067          	ret
        if (!prev) head = pcb;
    80002368:	00007717          	auipc	a4,0x7
    8000236c:	b2a73c23          	sd	a0,-1224(a4) # 80008ea0 <_ZN9Scheduler8sleepingE>
    80002370:	fe9ff06f          	j	80002358 <_ZN9Scheduler10putToSleepEP3PCB+0x48>
        if (!curr) tail = pcb;
    80002374:	00007797          	auipc	a5,0x7
    80002378:	b2a7ba23          	sd	a0,-1228(a5) # 80008ea8 <_ZN9Scheduler8sleepingE+0x8>
    8000237c:	fe1ff06f          	j	8000235c <_ZN9Scheduler10putToSleepEP3PCB+0x4c>

0000000080002380 <_ZN9Scheduler10checkAwakeEv>:
        return head;
    80002380:	00007517          	auipc	a0,0x7
    80002384:	b2053503          	ld	a0,-1248(a0) # 80008ea0 <_ZN9Scheduler8sleepingE>
    while (sleeping.front() && Riscv::totalTime >= sleeping.front()->sleepThreshold) {
    80002388:	08050263          	beqz	a0,8000240c <_ZN9Scheduler10checkAwakeEv+0x8c>
    8000238c:	00853703          	ld	a4,8(a0)
    80002390:	00007797          	auipc	a5,0x7
    80002394:	a707b783          	ld	a5,-1424(a5) # 80008e00 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002398:	0007b783          	ld	a5,0(a5)
    8000239c:	06e7e863          	bltu	a5,a4,8000240c <_ZN9Scheduler10checkAwakeEv+0x8c>
void Scheduler::checkAwake() {
    800023a0:	ff010113          	addi	sp,sp,-16
    800023a4:	00113423          	sd	ra,8(sp)
    800023a8:	00813023          	sd	s0,0(sp)
    800023ac:	01010413          	addi	s0,sp,16
    800023b0:	0380006f          	j	800023e8 <_ZN9Scheduler10checkAwakeEv+0x68>
        if (!head) tail = nullptr;
    800023b4:	00007797          	auipc	a5,0x7
    800023b8:	ae07ba23          	sd	zero,-1292(a5) # 80008ea8 <_ZN9Scheduler8sleepingE+0x8>
        ret->next = nullptr;
    800023bc:	04053423          	sd	zero,72(a0)
        Scheduler::put(sleeping.pop());
    800023c0:	00000097          	auipc	ra,0x0
    800023c4:	eb4080e7          	jalr	-332(ra) # 80002274 <_ZN9Scheduler3putEP3PCB>
        return head;
    800023c8:	00007517          	auipc	a0,0x7
    800023cc:	ad853503          	ld	a0,-1320(a0) # 80008ea0 <_ZN9Scheduler8sleepingE>
    while (sleeping.front() && Riscv::totalTime >= sleeping.front()->sleepThreshold) {
    800023d0:	02050663          	beqz	a0,800023fc <_ZN9Scheduler10checkAwakeEv+0x7c>
    800023d4:	00853703          	ld	a4,8(a0)
    800023d8:	00007797          	auipc	a5,0x7
    800023dc:	a287b783          	ld	a5,-1496(a5) # 80008e00 <_GLOBAL_OFFSET_TABLE_+0x40>
    800023e0:	0007b783          	ld	a5,0(a5)
    800023e4:	00e7ec63          	bltu	a5,a4,800023fc <_ZN9Scheduler10checkAwakeEv+0x7c>
        head = head->next;
    800023e8:	04853783          	ld	a5,72(a0)
    800023ec:	00007717          	auipc	a4,0x7
    800023f0:	aaf73a23          	sd	a5,-1356(a4) # 80008ea0 <_ZN9Scheduler8sleepingE>
        if (!head) tail = nullptr;
    800023f4:	fc0794e3          	bnez	a5,800023bc <_ZN9Scheduler10checkAwakeEv+0x3c>
    800023f8:	fbdff06f          	j	800023b4 <_ZN9Scheduler10checkAwakeEv+0x34>
}
    800023fc:	00813083          	ld	ra,8(sp)
    80002400:	00013403          	ld	s0,0(sp)
    80002404:	01010113          	addi	sp,sp,16
    80002408:	00008067          	ret
    8000240c:	00008067          	ret

0000000080002410 <_GLOBAL__sub_I__ZN9Scheduler5readyE>:
    80002410:	ff010113          	addi	sp,sp,-16
    80002414:	00113423          	sd	ra,8(sp)
    80002418:	00813023          	sd	s0,0(sp)
    8000241c:	01010413          	addi	s0,sp,16
    80002420:	000105b7          	lui	a1,0x10
    80002424:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002428:	00100513          	li	a0,1
    8000242c:	00000097          	auipc	ra,0x0
    80002430:	e00080e7          	jalr	-512(ra) # 8000222c <_Z41__static_initialization_and_destruction_0ii>
    80002434:	00813083          	ld	ra,8(sp)
    80002438:	00013403          	ld	s0,0(sp)
    8000243c:	01010113          	addi	sp,sp,16
    80002440:	00008067          	ret

0000000080002444 <_ZN6Thread7wrapperEPv>:
Thread::Thread() {
    myHandle = nullptr;
    thread_build(&myHandle, &Thread::wrapper, (void*)this);
}

void Thread::wrapper(void *thread) {
    80002444:	ff010113          	addi	sp,sp,-16
    80002448:	00113423          	sd	ra,8(sp)
    8000244c:	00813023          	sd	s0,0(sp)
    80002450:	01010413          	addi	s0,sp,16
    ((Thread*)thread)->run();
    80002454:	00053783          	ld	a5,0(a0)
    80002458:	0107b783          	ld	a5,16(a5)
    8000245c:	000780e7          	jalr	a5
}
    80002460:	00813083          	ld	ra,8(sp)
    80002464:	00013403          	ld	s0,0(sp)
    80002468:	01010113          	addi	sp,sp,16
    8000246c:	00008067          	ret

0000000080002470 <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    80002470:	ff010113          	addi	sp,sp,-16
    80002474:	00113423          	sd	ra,8(sp)
    80002478:	00813023          	sd	s0,0(sp)
    8000247c:	01010413          	addi	s0,sp,16
    80002480:	00007797          	auipc	a5,0x7
    80002484:	87878793          	addi	a5,a5,-1928 # 80008cf8 <_ZTV6Thread+0x10>
    80002488:	00f53023          	sd	a5,0(a0)
    thread_delete(myHandle);
    8000248c:	00853503          	ld	a0,8(a0)
    80002490:	fffff097          	auipc	ra,0xfffff
    80002494:	fac080e7          	jalr	-84(ra) # 8000143c <_Z13thread_deleteP7_thread>
}
    80002498:	00813083          	ld	ra,8(sp)
    8000249c:	00013403          	ld	s0,0(sp)
    800024a0:	01010113          	addi	sp,sp,16
    800024a4:	00008067          	ret

00000000800024a8 <_ZN9SemaphoreD1Ev>:
Semaphore::Semaphore(unsigned init) {
    int ret = sem_open(&myHandle, init);
    if (ret != 0) myHandle = nullptr;
}

Semaphore::~Semaphore() {
    800024a8:	ff010113          	addi	sp,sp,-16
    800024ac:	00113423          	sd	ra,8(sp)
    800024b0:	00813023          	sd	s0,0(sp)
    800024b4:	01010413          	addi	s0,sp,16
    800024b8:	00007797          	auipc	a5,0x7
    800024bc:	86878793          	addi	a5,a5,-1944 # 80008d20 <_ZTV9Semaphore+0x10>
    800024c0:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    800024c4:	00853503          	ld	a0,8(a0)
    800024c8:	fffff097          	auipc	ra,0xfffff
    800024cc:	fe0080e7          	jalr	-32(ra) # 800014a8 <_Z9sem_closeP4_sem>
}
    800024d0:	00813083          	ld	ra,8(sp)
    800024d4:	00013403          	ld	s0,0(sp)
    800024d8:	01010113          	addi	sp,sp,16
    800024dc:	00008067          	ret

00000000800024e0 <_Znwm>:
void* operator new(size_t sz) {
    800024e0:	ff010113          	addi	sp,sp,-16
    800024e4:	00113423          	sd	ra,8(sp)
    800024e8:	00813023          	sd	s0,0(sp)
    800024ec:	01010413          	addi	s0,sp,16
    return mem_alloc(sz);
    800024f0:	fffff097          	auipc	ra,0xfffff
    800024f4:	d68080e7          	jalr	-664(ra) # 80001258 <_Z9mem_allocm>
}
    800024f8:	00813083          	ld	ra,8(sp)
    800024fc:	00013403          	ld	s0,0(sp)
    80002500:	01010113          	addi	sp,sp,16
    80002504:	00008067          	ret

0000000080002508 <_ZdlPv>:
void operator delete(void* adr) {
    80002508:	ff010113          	addi	sp,sp,-16
    8000250c:	00113423          	sd	ra,8(sp)
    80002510:	00813023          	sd	s0,0(sp)
    80002514:	01010413          	addi	s0,sp,16
    mem_free(adr);
    80002518:	fffff097          	auipc	ra,0xfffff
    8000251c:	d74080e7          	jalr	-652(ra) # 8000128c <_Z8mem_freePv>
}
    80002520:	00813083          	ld	ra,8(sp)
    80002524:	00013403          	ld	s0,0(sp)
    80002528:	01010113          	addi	sp,sp,16
    8000252c:	00008067          	ret

0000000080002530 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80002530:	fe010113          	addi	sp,sp,-32
    80002534:	00113c23          	sd	ra,24(sp)
    80002538:	00813823          	sd	s0,16(sp)
    8000253c:	00913423          	sd	s1,8(sp)
    80002540:	02010413          	addi	s0,sp,32
    80002544:	00050493          	mv	s1,a0
}
    80002548:	00000097          	auipc	ra,0x0
    8000254c:	f28080e7          	jalr	-216(ra) # 80002470 <_ZN6ThreadD1Ev>
    80002550:	00048513          	mv	a0,s1
    80002554:	00000097          	auipc	ra,0x0
    80002558:	fb4080e7          	jalr	-76(ra) # 80002508 <_ZdlPv>
    8000255c:	01813083          	ld	ra,24(sp)
    80002560:	01013403          	ld	s0,16(sp)
    80002564:	00813483          	ld	s1,8(sp)
    80002568:	02010113          	addi	sp,sp,32
    8000256c:	00008067          	ret

0000000080002570 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80002570:	fe010113          	addi	sp,sp,-32
    80002574:	00113c23          	sd	ra,24(sp)
    80002578:	00813823          	sd	s0,16(sp)
    8000257c:	00913423          	sd	s1,8(sp)
    80002580:	02010413          	addi	s0,sp,32
    80002584:	00050493          	mv	s1,a0
}
    80002588:	00000097          	auipc	ra,0x0
    8000258c:	f20080e7          	jalr	-224(ra) # 800024a8 <_ZN9SemaphoreD1Ev>
    80002590:	00048513          	mv	a0,s1
    80002594:	00000097          	auipc	ra,0x0
    80002598:	f74080e7          	jalr	-140(ra) # 80002508 <_ZdlPv>
    8000259c:	01813083          	ld	ra,24(sp)
    800025a0:	01013403          	ld	s0,16(sp)
    800025a4:	00813483          	ld	s1,8(sp)
    800025a8:	02010113          	addi	sp,sp,32
    800025ac:	00008067          	ret

00000000800025b0 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void *args) {
    800025b0:	ff010113          	addi	sp,sp,-16
    800025b4:	00113423          	sd	ra,8(sp)
    800025b8:	00813023          	sd	s0,0(sp)
    800025bc:	01010413          	addi	s0,sp,16
    800025c0:	00006797          	auipc	a5,0x6
    800025c4:	73878793          	addi	a5,a5,1848 # 80008cf8 <_ZTV6Thread+0x10>
    800025c8:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    800025cc:	00053423          	sd	zero,8(a0)
    thread_create(&myHandle, body, args);
    800025d0:	00850513          	addi	a0,a0,8
    800025d4:	fffff097          	auipc	ra,0xfffff
    800025d8:	ce8080e7          	jalr	-792(ra) # 800012bc <_Z13thread_createPP7_threadPFvPvES2_>
}
    800025dc:	00813083          	ld	ra,8(sp)
    800025e0:	00013403          	ld	s0,0(sp)
    800025e4:	01010113          	addi	sp,sp,16
    800025e8:	00008067          	ret

00000000800025ec <_ZN6Thread5startEv>:
    if (myHandle) {
    800025ec:	00853503          	ld	a0,8(a0)
    800025f0:	02050663          	beqz	a0,8000261c <_ZN6Thread5startEv+0x30>
int Thread::start() {
    800025f4:	ff010113          	addi	sp,sp,-16
    800025f8:	00113423          	sd	ra,8(sp)
    800025fc:	00813023          	sd	s0,0(sp)
    80002600:	01010413          	addi	s0,sp,16
        return thread_start(myHandle);
    80002604:	fffff097          	auipc	ra,0xfffff
    80002608:	e08080e7          	jalr	-504(ra) # 8000140c <_Z12thread_startPv>
}
    8000260c:	00813083          	ld	ra,8(sp)
    80002610:	00013403          	ld	s0,0(sp)
    80002614:	01010113          	addi	sp,sp,16
    80002618:	00008067          	ret
    return -1;
    8000261c:	fff00513          	li	a0,-1
}
    80002620:	00008067          	ret

0000000080002624 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80002624:	ff010113          	addi	sp,sp,-16
    80002628:	00113423          	sd	ra,8(sp)
    8000262c:	00813023          	sd	s0,0(sp)
    80002630:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002634:	fffff097          	auipc	ra,0xfffff
    80002638:	d34080e7          	jalr	-716(ra) # 80001368 <_Z15thread_dispatchv>
}
    8000263c:	00813083          	ld	ra,8(sp)
    80002640:	00013403          	ld	s0,0(sp)
    80002644:	01010113          	addi	sp,sp,16
    80002648:	00008067          	ret

000000008000264c <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    8000264c:	ff010113          	addi	sp,sp,-16
    80002650:	00113423          	sd	ra,8(sp)
    80002654:	00813023          	sd	s0,0(sp)
    80002658:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    8000265c:	fffff097          	auipc	ra,0xfffff
    80002660:	edc080e7          	jalr	-292(ra) # 80001538 <_Z10time_sleepm>
}
    80002664:	00813083          	ld	ra,8(sp)
    80002668:	00013403          	ld	s0,0(sp)
    8000266c:	01010113          	addi	sp,sp,16
    80002670:	00008067          	ret

0000000080002674 <_ZN14PeriodicThread7wrapperEPv>:
void PeriodicThread::wrapper(void* arg) {
    80002674:	fe010113          	addi	sp,sp,-32
    80002678:	00113c23          	sd	ra,24(sp)
    8000267c:	00813823          	sd	s0,16(sp)
    80002680:	00913423          	sd	s1,8(sp)
    80002684:	01213023          	sd	s2,0(sp)
    80002688:	02010413          	addi	s0,sp,32
    PeriodicThread *thread = (PeriodicThread*)((PTargs*)arg)->thread;
    8000268c:	00053483          	ld	s1,0(a0)
    time_t period = ((PTargs*)arg)->period;
    80002690:	00853903          	ld	s2,8(a0)
        thread->periodicActivation();
    80002694:	0004b783          	ld	a5,0(s1)
    80002698:	0187b783          	ld	a5,24(a5)
    8000269c:	00048513          	mv	a0,s1
    800026a0:	000780e7          	jalr	a5
        Thread::sleep(period);
    800026a4:	00090513          	mv	a0,s2
    800026a8:	00000097          	auipc	ra,0x0
    800026ac:	fa4080e7          	jalr	-92(ra) # 8000264c <_ZN6Thread5sleepEm>
    while (true) {
    800026b0:	fe5ff06f          	j	80002694 <_ZN14PeriodicThread7wrapperEPv+0x20>

00000000800026b4 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    800026b4:	ff010113          	addi	sp,sp,-16
    800026b8:	00113423          	sd	ra,8(sp)
    800026bc:	00813023          	sd	s0,0(sp)
    800026c0:	01010413          	addi	s0,sp,16
    800026c4:	00006797          	auipc	a5,0x6
    800026c8:	63478793          	addi	a5,a5,1588 # 80008cf8 <_ZTV6Thread+0x10>
    800026cc:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    800026d0:	00053423          	sd	zero,8(a0)
    thread_build(&myHandle, &Thread::wrapper, (void*)this);
    800026d4:	00050613          	mv	a2,a0
    800026d8:	00000597          	auipc	a1,0x0
    800026dc:	d6c58593          	addi	a1,a1,-660 # 80002444 <_ZN6Thread7wrapperEPv>
    800026e0:	00850513          	addi	a0,a0,8
    800026e4:	fffff097          	auipc	ra,0xfffff
    800026e8:	ca8080e7          	jalr	-856(ra) # 8000138c <_Z12thread_buildPP7_threadPFvPvES2_>
}
    800026ec:	00813083          	ld	ra,8(sp)
    800026f0:	00013403          	ld	s0,0(sp)
    800026f4:	01010113          	addi	sp,sp,16
    800026f8:	00008067          	ret

00000000800026fc <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period)
    800026fc:	fe010113          	addi	sp,sp,-32
    80002700:	00113c23          	sd	ra,24(sp)
    80002704:	00813823          	sd	s0,16(sp)
    80002708:	00913423          	sd	s1,8(sp)
    8000270c:	01213023          	sd	s2,0(sp)
    80002710:	02010413          	addi	s0,sp,32
    80002714:	00050493          	mv	s1,a0
    80002718:	00058913          	mv	s2,a1
        : Thread(&PeriodicThread::wrapper, new PTargs({this, period})) {}
    8000271c:	01000513          	li	a0,16
    80002720:	00000097          	auipc	ra,0x0
    80002724:	dc0080e7          	jalr	-576(ra) # 800024e0 <_Znwm>
    80002728:	00050613          	mv	a2,a0
    8000272c:	00953023          	sd	s1,0(a0)
    80002730:	01253423          	sd	s2,8(a0)
    80002734:	00000597          	auipc	a1,0x0
    80002738:	f4058593          	addi	a1,a1,-192 # 80002674 <_ZN14PeriodicThread7wrapperEPv>
    8000273c:	00048513          	mv	a0,s1
    80002740:	00000097          	auipc	ra,0x0
    80002744:	e70080e7          	jalr	-400(ra) # 800025b0 <_ZN6ThreadC1EPFvPvES0_>
    80002748:	00006797          	auipc	a5,0x6
    8000274c:	58078793          	addi	a5,a5,1408 # 80008cc8 <_ZTV14PeriodicThread+0x10>
    80002750:	00f4b023          	sd	a5,0(s1)
    80002754:	01813083          	ld	ra,24(sp)
    80002758:	01013403          	ld	s0,16(sp)
    8000275c:	00813483          	ld	s1,8(sp)
    80002760:	00013903          	ld	s2,0(sp)
    80002764:	02010113          	addi	sp,sp,32
    80002768:	00008067          	ret

000000008000276c <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned init) {
    8000276c:	fe010113          	addi	sp,sp,-32
    80002770:	00113c23          	sd	ra,24(sp)
    80002774:	00813823          	sd	s0,16(sp)
    80002778:	00913423          	sd	s1,8(sp)
    8000277c:	02010413          	addi	s0,sp,32
    80002780:	00050493          	mv	s1,a0
    80002784:	00006797          	auipc	a5,0x6
    80002788:	59c78793          	addi	a5,a5,1436 # 80008d20 <_ZTV9Semaphore+0x10>
    8000278c:	00f53023          	sd	a5,0(a0)
    int ret = sem_open(&myHandle, init);
    80002790:	00850513          	addi	a0,a0,8
    80002794:	fffff097          	auipc	ra,0xfffff
    80002798:	cd8080e7          	jalr	-808(ra) # 8000146c <_Z8sem_openPP4_semj>
    if (ret != 0) myHandle = nullptr;
    8000279c:	00050463          	beqz	a0,800027a4 <_ZN9SemaphoreC1Ej+0x38>
    800027a0:	0004b423          	sd	zero,8(s1)
}
    800027a4:	01813083          	ld	ra,24(sp)
    800027a8:	01013403          	ld	s0,16(sp)
    800027ac:	00813483          	ld	s1,8(sp)
    800027b0:	02010113          	addi	sp,sp,32
    800027b4:	00008067          	ret

00000000800027b8 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    if (!myHandle) return -1;
    800027b8:	00853503          	ld	a0,8(a0)
    800027bc:	02050663          	beqz	a0,800027e8 <_ZN9Semaphore4waitEv+0x30>
int Semaphore::wait() {
    800027c0:	ff010113          	addi	sp,sp,-16
    800027c4:	00113423          	sd	ra,8(sp)
    800027c8:	00813023          	sd	s0,0(sp)
    800027cc:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    800027d0:	fffff097          	auipc	ra,0xfffff
    800027d4:	d08080e7          	jalr	-760(ra) # 800014d8 <_Z8sem_waitP4_sem>
}
    800027d8:	00813083          	ld	ra,8(sp)
    800027dc:	00013403          	ld	s0,0(sp)
    800027e0:	01010113          	addi	sp,sp,16
    800027e4:	00008067          	ret
    if (!myHandle) return -1;
    800027e8:	fff00513          	li	a0,-1
}
    800027ec:	00008067          	ret

00000000800027f0 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    if (!myHandle) return -1;
    800027f0:	00853503          	ld	a0,8(a0)
    800027f4:	02050663          	beqz	a0,80002820 <_ZN9Semaphore6signalEv+0x30>
int Semaphore::signal() {
    800027f8:	ff010113          	addi	sp,sp,-16
    800027fc:	00113423          	sd	ra,8(sp)
    80002800:	00813023          	sd	s0,0(sp)
    80002804:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80002808:	fffff097          	auipc	ra,0xfffff
    8000280c:	d00080e7          	jalr	-768(ra) # 80001508 <_Z10sem_signalP4_sem>
}
    80002810:	00813083          	ld	ra,8(sp)
    80002814:	00013403          	ld	s0,0(sp)
    80002818:	01010113          	addi	sp,sp,16
    8000281c:	00008067          	ret
    if (!myHandle) return -1;
    80002820:	fff00513          	li	a0,-1
}
    80002824:	00008067          	ret

0000000080002828 <_ZN7Console4getcEv>:


// ---------- CONSOLE ----------

char Console::getc() {
    80002828:	ff010113          	addi	sp,sp,-16
    8000282c:	00113423          	sd	ra,8(sp)
    80002830:	00813023          	sd	s0,0(sp)
    80002834:	01010413          	addi	s0,sp,16
    return ::getc();
    80002838:	fffff097          	auipc	ra,0xfffff
    8000283c:	d30080e7          	jalr	-720(ra) # 80001568 <_Z4getcv>
}
    80002840:	00813083          	ld	ra,8(sp)
    80002844:	00013403          	ld	s0,0(sp)
    80002848:	01010113          	addi	sp,sp,16
    8000284c:	00008067          	ret

0000000080002850 <_ZN7Console4putcEc>:
void Console::putc(char c) {
    80002850:	ff010113          	addi	sp,sp,-16
    80002854:	00113423          	sd	ra,8(sp)
    80002858:	00813023          	sd	s0,0(sp)
    8000285c:	01010413          	addi	s0,sp,16
    ::putc(c);
    80002860:	fffff097          	auipc	ra,0xfffff
    80002864:	d34080e7          	jalr	-716(ra) # 80001594 <_Z4putcc>
    80002868:	00813083          	ld	ra,8(sp)
    8000286c:	00013403          	ld	s0,0(sp)
    80002870:	01010113          	addi	sp,sp,16
    80002874:	00008067          	ret

0000000080002878 <_ZN6Thread3runEv>:
    static void dispatch();
    static int sleep(time_t);

protected:
    Thread();
    virtual void run() {}
    80002878:	ff010113          	addi	sp,sp,-16
    8000287c:	00813423          	sd	s0,8(sp)
    80002880:	01010413          	addi	s0,sp,16
    80002884:	00813403          	ld	s0,8(sp)
    80002888:	01010113          	addi	sp,sp,16
    8000288c:	00008067          	ret

0000000080002890 <_ZN14PeriodicThread18periodicActivationEv>:
};

class PeriodicThread : public Thread {
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {}
    80002890:	ff010113          	addi	sp,sp,-16
    80002894:	00813423          	sd	s0,8(sp)
    80002898:	01010413          	addi	s0,sp,16
    8000289c:	00813403          	ld	s0,8(sp)
    800028a0:	01010113          	addi	sp,sp,16
    800028a4:	00008067          	ret

00000000800028a8 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    800028a8:	ff010113          	addi	sp,sp,-16
    800028ac:	00113423          	sd	ra,8(sp)
    800028b0:	00813023          	sd	s0,0(sp)
    800028b4:	01010413          	addi	s0,sp,16
    800028b8:	00006797          	auipc	a5,0x6
    800028bc:	41078793          	addi	a5,a5,1040 # 80008cc8 <_ZTV14PeriodicThread+0x10>
    800028c0:	00f53023          	sd	a5,0(a0)
    800028c4:	00000097          	auipc	ra,0x0
    800028c8:	bac080e7          	jalr	-1108(ra) # 80002470 <_ZN6ThreadD1Ev>
    800028cc:	00813083          	ld	ra,8(sp)
    800028d0:	00013403          	ld	s0,0(sp)
    800028d4:	01010113          	addi	sp,sp,16
    800028d8:	00008067          	ret

00000000800028dc <_ZN14PeriodicThreadD0Ev>:
    800028dc:	fe010113          	addi	sp,sp,-32
    800028e0:	00113c23          	sd	ra,24(sp)
    800028e4:	00813823          	sd	s0,16(sp)
    800028e8:	00913423          	sd	s1,8(sp)
    800028ec:	02010413          	addi	s0,sp,32
    800028f0:	00050493          	mv	s1,a0
    800028f4:	00006797          	auipc	a5,0x6
    800028f8:	3d478793          	addi	a5,a5,980 # 80008cc8 <_ZTV14PeriodicThread+0x10>
    800028fc:	00f53023          	sd	a5,0(a0)
    80002900:	00000097          	auipc	ra,0x0
    80002904:	b70080e7          	jalr	-1168(ra) # 80002470 <_ZN6ThreadD1Ev>
    80002908:	00048513          	mv	a0,s1
    8000290c:	00000097          	auipc	ra,0x0
    80002910:	bfc080e7          	jalr	-1028(ra) # 80002508 <_ZdlPv>
    80002914:	01813083          	ld	ra,24(sp)
    80002918:	01013403          	ld	s0,16(sp)
    8000291c:	00813483          	ld	s1,8(sp)
    80002920:	02010113          	addi	sp,sp,32
    80002924:	00008067          	ret

0000000080002928 <_ZN5Riscv3r_aEm>:
#include "../h/PCB.hpp"
#include "../h/Riscv.hpp"

uint64 Riscv::totalTime = 0;

REG Riscv::r_a(REG i) {
    80002928:	ff010113          	addi	sp,sp,-16
    8000292c:	00813423          	sd	s0,8(sp)
    80002930:	01010413          	addi	s0,sp,16
    uint64 addr = PCB::running->savedSP + 80 + 8 * i;
    80002934:	00006797          	auipc	a5,0x6
    80002938:	4dc7b783          	ld	a5,1244(a5) # 80008e10 <_GLOBAL_OFFSET_TABLE_+0x50>
    8000293c:	0007b783          	ld	a5,0(a5)
    80002940:	0387b783          	ld	a5,56(a5)
    80002944:	00351513          	slli	a0,a0,0x3
    80002948:	00a78533          	add	a0,a5,a0
    8000294c:	05050513          	addi	a0,a0,80
    uint64 a = -1;
    __asm__ volatile("ld %0, 0(%1)" : "=r"(a) : "r"(addr));
    80002950:	00053503          	ld	a0,0(a0)
    return a;
}
    80002954:	00813403          	ld	s0,8(sp)
    80002958:	01010113          	addi	sp,sp,16
    8000295c:	00008067          	ret

0000000080002960 <_ZN5Riscv4w_a0Em>:
void Riscv::w_a0(REG a0) {
    80002960:	ff010113          	addi	sp,sp,-16
    80002964:	00813423          	sd	s0,8(sp)
    80002968:	01010413          	addi	s0,sp,16
    uint64 addr = PCB::running->savedSP + 80;
    8000296c:	00006797          	auipc	a5,0x6
    80002970:	4a47b783          	ld	a5,1188(a5) # 80008e10 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002974:	0007b783          	ld	a5,0(a5)
    80002978:	0387b783          	ld	a5,56(a5)
    8000297c:	05078793          	addi	a5,a5,80
    __asm__ volatile("sd %0, 0(%1)" : : "r"(a0), "r"(addr));
    80002980:	00a7b023          	sd	a0,0(a5)
}
    80002984:	00813403          	ld	s0,8(sp)
    80002988:	01010113          	addi	sp,sp,16
    8000298c:	00008067          	ret

0000000080002990 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie() {
    80002990:	ff010113          	addi	sp,sp,-16
    80002994:	00813423          	sd	s0,8(sp)
    80002998:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    8000299c:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    800029a0:	10200073          	sret
}
    800029a4:	00813403          	ld	s0,8(sp)
    800029a8:	01010113          	addi	sp,sp,16
    800029ac:	00008067          	ret

00000000800029b0 <_ZN5Riscv17setPrivilegeLevelEv>:

void Riscv::setPrivilegeLevel() {
    800029b0:	ff010113          	addi	sp,sp,-16
    800029b4:	00813423          	sd	s0,8(sp)
    800029b8:	01010413          	addi	s0,sp,16
    if (PCB::running->privileged)
    800029bc:	00006797          	auipc	a5,0x6
    800029c0:	4547b783          	ld	a5,1108(a5) # 80008e10 <_GLOBAL_OFFSET_TABLE_+0x50>
    800029c4:	0007b783          	ld	a5,0(a5)
    800029c8:	0307c783          	lbu	a5,48(a5)
    800029cc:	00078c63          	beqz	a5,800029e4 <_ZN5Riscv17setPrivilegeLevelEv+0x34>
inline void Riscv::w_sstatus(REG sstatus) {
    __asm__ volatile("csrw sstatus, %0" : : "r"(sstatus));
}

inline void Riscv::ms_sstatus(REG mask) {
    __asm__ volatile("csrs sstatus, %0" : : "r"(mask));
    800029d0:	10000793          	li	a5,256
    800029d4:	1007a073          	csrs	sstatus,a5
        ms_sstatus(SSTATUS_SPP);
    else
        mc_sstatus(SSTATUS_SPP);
}
    800029d8:	00813403          	ld	s0,8(sp)
    800029dc:	01010113          	addi	sp,sp,16
    800029e0:	00008067          	ret
}
inline void Riscv::mc_sstatus(REG mask) {
    __asm__ volatile("csrc sstatus, %0" : : "r"(mask));
    800029e4:	10000793          	li	a5,256
    800029e8:	1007b073          	csrc	sstatus,a5
    800029ec:	fedff06f          	j	800029d8 <_ZN5Riscv17setPrivilegeLevelEv+0x28>

00000000800029f0 <_ZN15MemoryAllocator9mem_allocEm>:
#include "../h/MemoryAllocator.hpp"

MemoryAllocator::Block* MemoryAllocator::head = nullptr;
MemoryAllocator::Block* MemoryAllocator::unalloc = nullptr;

void* MemoryAllocator::mem_alloc(size_t in_bytes) {
    800029f0:	ff010113          	addi	sp,sp,-16
    800029f4:	00813423          	sd	s0,8(sp)
    800029f8:	01010413          	addi	s0,sp,16

    if (unalloc == nullptr)
    800029fc:	00006797          	auipc	a5,0x6
    80002a00:	4bc7b783          	ld	a5,1212(a5) # 80008eb8 <_ZN15MemoryAllocator7unallocE>
    80002a04:	02078863          	beqz	a5,80002a34 <_ZN15MemoryAllocator9mem_allocEm+0x44>
        unalloc = (Block*)HEAP_START_ADDR;

    size_t in_blocks = (in_bytes + sizeof(size_t) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80002a08:	04750613          	addi	a2,a0,71
    80002a0c:	00665693          	srli	a3,a2,0x6

    for (Block* curr = head, *prev = nullptr; curr != nullptr; curr = (curr->next)) {
    80002a10:	00006797          	auipc	a5,0x6
    80002a14:	4b07b783          	ld	a5,1200(a5) # 80008ec0 <_ZN15MemoryAllocator4headE>
    80002a18:	00000593          	li	a1,0
    80002a1c:	08078a63          	beqz	a5,80002ab0 <_ZN15MemoryAllocator9mem_allocEm+0xc0>
        if (curr->size >= in_blocks) {
    80002a20:	0007b703          	ld	a4,0(a5)
    80002a24:	02d77463          	bgeu	a4,a3,80002a4c <_ZN15MemoryAllocator9mem_allocEm+0x5c>
                    head = remaining;
                curr->size = in_blocks;
            }
            return ret;
        }
        prev = curr;
    80002a28:	00078593          	mv	a1,a5
    for (Block* curr = head, *prev = nullptr; curr != nullptr; curr = (curr->next)) {
    80002a2c:	0087b783          	ld	a5,8(a5)
    80002a30:	fedff06f          	j	80002a1c <_ZN15MemoryAllocator9mem_allocEm+0x2c>
        unalloc = (Block*)HEAP_START_ADDR;
    80002a34:	00006797          	auipc	a5,0x6
    80002a38:	3a47b783          	ld	a5,932(a5) # 80008dd8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002a3c:	0007b783          	ld	a5,0(a5)
    80002a40:	00006717          	auipc	a4,0x6
    80002a44:	46f73c23          	sd	a5,1144(a4) # 80008eb8 <_ZN15MemoryAllocator7unallocE>
    80002a48:	fc1ff06f          	j	80002a08 <_ZN15MemoryAllocator9mem_allocEm+0x18>
            void* ret = &(curr->next);
    80002a4c:	00878513          	addi	a0,a5,8
            if (curr->size == in_blocks) {
    80002a50:	02d70a63          	beq	a4,a3,80002a84 <_ZN15MemoryAllocator9mem_allocEm+0x94>
                Block* remaining = (Block*)((uint8*)curr + in_blocks * MEM_BLOCK_SIZE);
    80002a54:	fc067613          	andi	a2,a2,-64
    80002a58:	00c78633          	add	a2,a5,a2
                remaining->size = curr->size - in_blocks;
    80002a5c:	40d70733          	sub	a4,a4,a3
    80002a60:	00e63023          	sd	a4,0(a2)
                remaining->next = curr->next;
    80002a64:	0087b703          	ld	a4,8(a5)
    80002a68:	00e63423          	sd	a4,8(a2)
                if (prev)
    80002a6c:	02058c63          	beqz	a1,80002aa4 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
                    prev->next = remaining;
    80002a70:	00c5b423          	sd	a2,8(a1)
                curr->size = in_blocks;
    80002a74:	00d7b023          	sd	a3,0(a5)
        fresh->size = in_blocks;
        return (void*)&(fresh->next);
    }

    return nullptr;
}
    80002a78:	00813403          	ld	s0,8(sp)
    80002a7c:	01010113          	addi	sp,sp,16
    80002a80:	00008067          	ret
                if (prev)
    80002a84:	00058863          	beqz	a1,80002a94 <_ZN15MemoryAllocator9mem_allocEm+0xa4>
                    prev->next = curr->next;
    80002a88:	0087b783          	ld	a5,8(a5)
    80002a8c:	00f5b423          	sd	a5,8(a1)
    80002a90:	fe9ff06f          	j	80002a78 <_ZN15MemoryAllocator9mem_allocEm+0x88>
                    head = curr->next;
    80002a94:	0087b783          	ld	a5,8(a5)
    80002a98:	00006717          	auipc	a4,0x6
    80002a9c:	42f73423          	sd	a5,1064(a4) # 80008ec0 <_ZN15MemoryAllocator4headE>
    80002aa0:	fd9ff06f          	j	80002a78 <_ZN15MemoryAllocator9mem_allocEm+0x88>
                    head = remaining;
    80002aa4:	00006717          	auipc	a4,0x6
    80002aa8:	40c73e23          	sd	a2,1052(a4) # 80008ec0 <_ZN15MemoryAllocator4headE>
    80002aac:	fc9ff06f          	j	80002a74 <_ZN15MemoryAllocator9mem_allocEm+0x84>
    if ((uint8*)unalloc + in_blocks * MEM_BLOCK_SIZE <= (uint8*) HEAP_END_ADDR) {
    80002ab0:	00006517          	auipc	a0,0x6
    80002ab4:	40853503          	ld	a0,1032(a0) # 80008eb8 <_ZN15MemoryAllocator7unallocE>
    80002ab8:	fc067613          	andi	a2,a2,-64
    80002abc:	00c50633          	add	a2,a0,a2
    80002ac0:	00006717          	auipc	a4,0x6
    80002ac4:	35873703          	ld	a4,856(a4) # 80008e18 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002ac8:	00073703          	ld	a4,0(a4)
    80002acc:	00c76c63          	bltu	a4,a2,80002ae4 <_ZN15MemoryAllocator9mem_allocEm+0xf4>
        unalloc = (Block*)((uint8*)unalloc + in_blocks * MEM_BLOCK_SIZE);
    80002ad0:	00006797          	auipc	a5,0x6
    80002ad4:	3ec7b423          	sd	a2,1000(a5) # 80008eb8 <_ZN15MemoryAllocator7unallocE>
        fresh->size = in_blocks;
    80002ad8:	00d53023          	sd	a3,0(a0)
        return (void*)&(fresh->next);
    80002adc:	00850513          	addi	a0,a0,8
    80002ae0:	f99ff06f          	j	80002a78 <_ZN15MemoryAllocator9mem_allocEm+0x88>
    return nullptr;
    80002ae4:	00078513          	mv	a0,a5
    80002ae8:	f91ff06f          	j	80002a78 <_ZN15MemoryAllocator9mem_allocEm+0x88>

0000000080002aec <_ZN15MemoryAllocator8mem_freeEPv>:

uint64 MemoryAllocator::mem_free(void* ptr) {
    80002aec:	ff010113          	addi	sp,sp,-16
    80002af0:	00813423          	sd	s0,8(sp)
    80002af4:	01010413          	addi	s0,sp,16

    Block* x = (Block*)((size_t*)ptr - 1);
    80002af8:	ff850713          	addi	a4,a0,-8
    x->next = head;
    80002afc:	00006797          	auipc	a5,0x6
    80002b00:	3bc78793          	addi	a5,a5,956 # 80008eb8 <_ZN15MemoryAllocator7unallocE>
    80002b04:	0087b683          	ld	a3,8(a5)
    80002b08:	00d53023          	sd	a3,0(a0)
    head = x;
    80002b0c:	00e7b423          	sd	a4,8(a5)

    return 0;
}
    80002b10:	00000513          	li	a0,0
    80002b14:	00813403          	ld	s0,8(sp)
    80002b18:	01010113          	addi	sp,sp,16
    80002b1c:	00008067          	ret

0000000080002b20 <_ZN15MemoryAllocator7kmallocEm>:

void* MemoryAllocator::kmalloc(size_t size) {
    80002b20:	ff010113          	addi	sp,sp,-16
    80002b24:	00113423          	sd	ra,8(sp)
    80002b28:	00813023          	sd	s0,0(sp)
    80002b2c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80002b30:	00000097          	auipc	ra,0x0
    80002b34:	ec0080e7          	jalr	-320(ra) # 800029f0 <_ZN15MemoryAllocator9mem_allocEm>
}
    80002b38:	00813083          	ld	ra,8(sp)
    80002b3c:	00013403          	ld	s0,0(sp)
    80002b40:	01010113          	addi	sp,sp,16
    80002b44:	00008067          	ret

0000000080002b48 <_ZN15MemoryAllocator5kfreeEPv>:

uint64 MemoryAllocator::kfree(void* ptr) {
    80002b48:	ff010113          	addi	sp,sp,-16
    80002b4c:	00113423          	sd	ra,8(sp)
    80002b50:	00813023          	sd	s0,0(sp)
    80002b54:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(ptr);
    80002b58:	00000097          	auipc	ra,0x0
    80002b5c:	f94080e7          	jalr	-108(ra) # 80002aec <_ZN15MemoryAllocator8mem_freeEPv>
}
    80002b60:	00813083          	ld	ra,8(sp)
    80002b64:	00013403          	ld	s0,0(sp)
    80002b68:	01010113          	addi	sp,sp,16
    80002b6c:	00008067          	ret

0000000080002b70 <_ZN15MemoryAllocator12sc_mem_allocEv>:


// ----- SYSTEM CALLS -----

void MemoryAllocator::sc_mem_alloc() {
    80002b70:	ff010113          	addi	sp,sp,-16
    80002b74:	00113423          	sd	ra,8(sp)
    80002b78:	00813023          	sd	s0,0(sp)
    80002b7c:	01010413          	addi	s0,sp,16
    size_t size = (size_t) Riscv::r_a(1);
    80002b80:	00100513          	li	a0,1
    80002b84:	00000097          	auipc	ra,0x0
    80002b88:	da4080e7          	jalr	-604(ra) # 80002928 <_ZN5Riscv3r_aEm>
    size *= MEM_BLOCK_SIZE; // now in bytes
    void* addr = mem_alloc(size);
    80002b8c:	00651513          	slli	a0,a0,0x6
    80002b90:	00000097          	auipc	ra,0x0
    80002b94:	e60080e7          	jalr	-416(ra) # 800029f0 <_ZN15MemoryAllocator9mem_allocEm>
    Riscv::w_a0((uint64)addr);
    80002b98:	00000097          	auipc	ra,0x0
    80002b9c:	dc8080e7          	jalr	-568(ra) # 80002960 <_ZN5Riscv4w_a0Em>
}
    80002ba0:	00813083          	ld	ra,8(sp)
    80002ba4:	00013403          	ld	s0,0(sp)
    80002ba8:	01010113          	addi	sp,sp,16
    80002bac:	00008067          	ret

0000000080002bb0 <_ZN15MemoryAllocator11sc_mem_freeEv>:

void MemoryAllocator::sc_mem_free() {
    80002bb0:	ff010113          	addi	sp,sp,-16
    80002bb4:	00113423          	sd	ra,8(sp)
    80002bb8:	00813023          	sd	s0,0(sp)
    80002bbc:	01010413          	addi	s0,sp,16
    void* ptr = (void*) Riscv::r_a(1);
    80002bc0:	00100513          	li	a0,1
    80002bc4:	00000097          	auipc	ra,0x0
    80002bc8:	d64080e7          	jalr	-668(ra) # 80002928 <_ZN5Riscv3r_aEm>
    uint64 ret = mem_free(ptr);
    80002bcc:	00000097          	auipc	ra,0x0
    80002bd0:	f20080e7          	jalr	-224(ra) # 80002aec <_ZN15MemoryAllocator8mem_freeEPv>
    Riscv::w_a0(ret);
    80002bd4:	00000097          	auipc	ra,0x0
    80002bd8:	d8c080e7          	jalr	-628(ra) # 80002960 <_ZN5Riscv4w_a0Em>
}
    80002bdc:	00813083          	ld	ra,8(sp)
    80002be0:	00013403          	ld	s0,0(sp)
    80002be4:	01010113          	addi	sp,sp,16
    80002be8:	00008067          	ret

0000000080002bec <_ZN5Riscv8croutineEv>:
#include "../h/Scheduler.hpp"
#include "../h/KConsole.hpp"
#include "../h/Riscv.hpp"

void Riscv::croutine()
{
    80002bec:	f9010113          	addi	sp,sp,-112
    80002bf0:	06113423          	sd	ra,104(sp)
    80002bf4:	06813023          	sd	s0,96(sp)
    80002bf8:	04913c23          	sd	s1,88(sp)
    80002bfc:	07010413          	addi	s0,sp,112
    PCB::running->savedSP = r_sscratch();
    80002c00:	00006797          	auipc	a5,0x6
    80002c04:	2107b783          	ld	a5,528(a5) # 80008e10 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002c08:	0007b783          	ld	a5,0(a5)
    __asm__ volatile("csrr %0, sscratch" : "=r"(sscratch));
    80002c0c:	14002773          	csrr	a4,sscratch
    80002c10:	fae43c23          	sd	a4,-72(s0)
    return sscratch;
    80002c14:	fb843703          	ld	a4,-72(s0)
    80002c18:	02e7bc23          	sd	a4,56(a5)
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80002c1c:	142027f3          	csrr	a5,scause
    80002c20:	faf43823          	sd	a5,-80(s0)
    return scause;
    80002c24:	fb043783          	ld	a5,-80(s0)

    uint64 scause = Riscv::r_scause();
    bool external = scause & SCAUSE_BNT;
    scause &= ~SCAUSE_BNT;
    80002c28:	fff00493          	li	s1,-1
    80002c2c:	0014d493          	srli	s1,s1,0x1
    80002c30:	0097f4b3          	and	s1,a5,s1

    // spoljasnji (asinhroni) prekidi
    if (external) {
    80002c34:	0407c263          	bltz	a5,80002c78 <_ZN5Riscv8croutineEv+0x8c>
        }
    }

    // unutrasnji (sinhroni) prekidi
    else {
        if (scause == 2 || scause == 5 || scause == 7) { // softverska greska
    80002c38:	00200793          	li	a5,2
    80002c3c:	00f48a63          	beq	s1,a5,80002c50 <_ZN5Riscv8croutineEv+0x64>
    80002c40:	00500793          	li	a5,5
    80002c44:	00f48663          	beq	s1,a5,80002c50 <_ZN5Riscv8croutineEv+0x64>
    80002c48:	00700793          	li	a5,7
    80002c4c:	00f49663          	bne	s1,a5,80002c58 <_ZN5Riscv8croutineEv+0x6c>
            // 2 - ilegalna instrukcija
            // 5 - nedozvoljena adresa citanja
            // 7 - nedozvoljena adresa upisa
            PCB::sc_thread_exit();
    80002c50:	fffff097          	auipc	ra,0xfffff
    80002c54:	bcc080e7          	jalr	-1076(ra) # 8000181c <_ZN3PCB14sc_thread_exitEv>
        }
        if (scause == 8 || scause == 9) { // ecall iz korisnickog (8), sistemskog (9) - ABI system call
    80002c58:	ff848493          	addi	s1,s1,-8
    80002c5c:	00100793          	li	a5,1
    80002c60:	0a97f663          	bgeu	a5,s1,80002d0c <_ZN5Riscv8croutineEv+0x120>
            w_sepc(sepc);
            setPrivilegeLevel();
        }
    }

}
    80002c64:	06813083          	ld	ra,104(sp)
    80002c68:	06013403          	ld	s0,96(sp)
    80002c6c:	05813483          	ld	s1,88(sp)
    80002c70:	07010113          	addi	sp,sp,112
    80002c74:	00008067          	ret
        if (scause == 1) { // prekid tajmera
    80002c78:	00100793          	li	a5,1
    80002c7c:	02f48463          	beq	s1,a5,80002ca4 <_ZN5Riscv8croutineEv+0xb8>
        if (scause == 9) { // spoljasnji hardverski prekid - konzola
    80002c80:	00900793          	li	a5,9
    80002c84:	fef490e3          	bne	s1,a5,80002c64 <_ZN5Riscv8croutineEv+0x78>
            KConsole::getCharactersFromConsole();
    80002c88:	fffff097          	auipc	ra,0xfffff
    80002c8c:	18c080e7          	jalr	396(ra) # 80001e14 <_ZN8KConsole24getCharactersFromConsoleEv>
            plic_complete(plic_claim());
    80002c90:	00002097          	auipc	ra,0x2
    80002c94:	614080e7          	jalr	1556(ra) # 800052a4 <plic_claim>
    80002c98:	00002097          	auipc	ra,0x2
    80002c9c:	644080e7          	jalr	1604(ra) # 800052dc <plic_complete>
    80002ca0:	fc5ff06f          	j	80002c64 <_ZN5Riscv8croutineEv+0x78>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80002ca4:	141027f3          	csrr	a5,sepc
    80002ca8:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80002cac:	fc843783          	ld	a5,-56(s0)
            uint64 volatile sepc = r_sepc();
    80002cb0:	f8f43823          	sd	a5,-112(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002cb4:	100027f3          	csrr	a5,sstatus
    80002cb8:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80002cbc:	fc043783          	ld	a5,-64(s0)
            uint64 volatile sstatus = r_sstatus();
    80002cc0:	f8f43c23          	sd	a5,-104(s0)
            totalTime++;
    80002cc4:	00006717          	auipc	a4,0x6
    80002cc8:	13c73703          	ld	a4,316(a4) # 80008e00 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002ccc:	00073783          	ld	a5,0(a4)
    80002cd0:	00178793          	addi	a5,a5,1
    80002cd4:	00f73023          	sd	a5,0(a4)
            Scheduler::checkAwake();
    80002cd8:	fffff097          	auipc	ra,0xfffff
    80002cdc:	6a8080e7          	jalr	1704(ra) # 80002380 <_ZN9Scheduler10checkAwakeEv>
            PCB::timerInterrupt();
    80002ce0:	fffff097          	auipc	ra,0xfffff
    80002ce4:	aa0080e7          	jalr	-1376(ra) # 80001780 <_ZN3PCB14timerInterruptEv>

inline void Riscv::ms_sip(REG mask) {
    __asm__ volatile("csrs sip, %0" : : "r"(mask));
}
inline void Riscv::mc_sip(REG mask) {
    __asm__ volatile("csrc sip, %0" : : "r"(mask));
    80002ce8:	00200793          	li	a5,2
    80002cec:	1447b073          	csrc	sip,a5
            w_sstatus(sstatus);
    80002cf0:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile("csrw sstatus, %0" : : "r"(sstatus));
    80002cf4:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    80002cf8:	f9043783          	ld	a5,-112(s0)
    __asm__ volatile("csrw sepc, %0" : : "r"(sepc));
    80002cfc:	14179073          	csrw	sepc,a5
            setPrivilegeLevel();
    80002d00:	00000097          	auipc	ra,0x0
    80002d04:	cb0080e7          	jalr	-848(ra) # 800029b0 <_ZN5Riscv17setPrivilegeLevelEv>
    80002d08:	f79ff06f          	j	80002c80 <_ZN5Riscv8croutineEv+0x94>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80002d0c:	141027f3          	csrr	a5,sepc
    80002d10:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80002d14:	fd843783          	ld	a5,-40(s0)
            uint64 volatile sepc = r_sepc() + 4;
    80002d18:	00478793          	addi	a5,a5,4
    80002d1c:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002d20:	100027f3          	csrr	a5,sstatus
    80002d24:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80002d28:	fd043783          	ld	a5,-48(s0)
            uint64 volatile sstatus = r_sstatus();
    80002d2c:	faf43423          	sd	a5,-88(s0)
            uint64 op_code = r_a(0);
    80002d30:	00000513          	li	a0,0
    80002d34:	00000097          	auipc	ra,0x0
    80002d38:	bf4080e7          	jalr	-1036(ra) # 80002928 <_ZN5Riscv3r_aEm>
            switch (op_code) {
    80002d3c:	04300793          	li	a5,67
    80002d40:	02a7e463          	bltu	a5,a0,80002d68 <_ZN5Riscv8croutineEv+0x17c>
    80002d44:	00251513          	slli	a0,a0,0x2
    80002d48:	00004717          	auipc	a4,0x4
    80002d4c:	2ec70713          	addi	a4,a4,748 # 80007034 <CONSOLE_STATUS+0x24>
    80002d50:	00e50533          	add	a0,a0,a4
    80002d54:	00052783          	lw	a5,0(a0)
    80002d58:	00e787b3          	add	a5,a5,a4
    80002d5c:	00078067          	jr	a5
                case 0x01: MemoryAllocator::sc_mem_alloc(); break;
    80002d60:	00000097          	auipc	ra,0x0
    80002d64:	e10080e7          	jalr	-496(ra) # 80002b70 <_ZN15MemoryAllocator12sc_mem_allocEv>
            w_sstatus(sstatus);
    80002d68:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile("csrw sstatus, %0" : : "r"(sstatus));
    80002d6c:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    80002d70:	fa043783          	ld	a5,-96(s0)
    __asm__ volatile("csrw sepc, %0" : : "r"(sepc));
    80002d74:	14179073          	csrw	sepc,a5
            setPrivilegeLevel();
    80002d78:	00000097          	auipc	ra,0x0
    80002d7c:	c38080e7          	jalr	-968(ra) # 800029b0 <_ZN5Riscv17setPrivilegeLevelEv>
}
    80002d80:	ee5ff06f          	j	80002c64 <_ZN5Riscv8croutineEv+0x78>
                case 0x02: MemoryAllocator::sc_mem_free(); break;
    80002d84:	00000097          	auipc	ra,0x0
    80002d88:	e2c080e7          	jalr	-468(ra) # 80002bb0 <_ZN15MemoryAllocator11sc_mem_freeEv>
    80002d8c:	fddff06f          	j	80002d68 <_ZN5Riscv8croutineEv+0x17c>
                case 0x11: PCB::sc_thread_create(); break;
    80002d90:	fffff097          	auipc	ra,0xfffff
    80002d94:	b60080e7          	jalr	-1184(ra) # 800018f0 <_ZN3PCB16sc_thread_createEv>
    80002d98:	fd1ff06f          	j	80002d68 <_ZN5Riscv8croutineEv+0x17c>
                case 0x12: PCB::sc_thread_exit(); break; // context switch
    80002d9c:	fffff097          	auipc	ra,0xfffff
    80002da0:	a80080e7          	jalr	-1408(ra) # 8000181c <_ZN3PCB14sc_thread_exitEv>
    80002da4:	fc5ff06f          	j	80002d68 <_ZN5Riscv8croutineEv+0x17c>
                case 0x13: PCB::sc_thread_dispatch(); break; // context switch
    80002da8:	fffff097          	auipc	ra,0xfffff
    80002dac:	ab8080e7          	jalr	-1352(ra) # 80001860 <_ZN3PCB18sc_thread_dispatchEv>
    80002db0:	fb9ff06f          	j	80002d68 <_ZN5Riscv8croutineEv+0x17c>
                case 0x14: PCB::sc_thread_build(); break; // annex
    80002db4:	fffff097          	auipc	ra,0xfffff
    80002db8:	c70080e7          	jalr	-912(ra) # 80001a24 <_ZN3PCB15sc_thread_buildEv>
    80002dbc:	fadff06f          	j	80002d68 <_ZN5Riscv8croutineEv+0x17c>
                case 0x15: PCB::sc_thread_start(); break; // annex
    80002dc0:	fffff097          	auipc	ra,0xfffff
    80002dc4:	c10080e7          	jalr	-1008(ra) # 800019d0 <_ZN3PCB15sc_thread_startEv>
    80002dc8:	fa1ff06f          	j	80002d68 <_ZN5Riscv8croutineEv+0x17c>
                case 0x16: PCB::sc_thread_delete(); break; // annex
    80002dcc:	fffff097          	auipc	ra,0xfffff
    80002dd0:	d2c080e7          	jalr	-724(ra) # 80001af8 <_ZN3PCB16sc_thread_deleteEv>
    80002dd4:	f95ff06f          	j	80002d68 <_ZN5Riscv8croutineEv+0x17c>
                case 0x21: KSemaphore::sc_sem_open(); break;
    80002dd8:	00000097          	auipc	ra,0x0
    80002ddc:	334080e7          	jalr	820(ra) # 8000310c <_ZN10KSemaphore11sc_sem_openEv>
    80002de0:	f89ff06f          	j	80002d68 <_ZN5Riscv8croutineEv+0x17c>
                case 0x22: KSemaphore::sc_sem_close(); break;
    80002de4:	00000097          	auipc	ra,0x0
    80002de8:	3c0080e7          	jalr	960(ra) # 800031a4 <_ZN10KSemaphore12sc_sem_closeEv>
    80002dec:	f7dff06f          	j	80002d68 <_ZN5Riscv8croutineEv+0x17c>
                case 0x23: KSemaphore::sc_sem_wait(); break;
    80002df0:	00000097          	auipc	ra,0x0
    80002df4:	264080e7          	jalr	612(ra) # 80003054 <_ZN10KSemaphore11sc_sem_waitEv>
    80002df8:	f71ff06f          	j	80002d68 <_ZN5Riscv8croutineEv+0x17c>
                case 0x24: KSemaphore::sc_sem_signal(); break;
    80002dfc:	00000097          	auipc	ra,0x0
    80002e00:	2bc080e7          	jalr	700(ra) # 800030b8 <_ZN10KSemaphore13sc_sem_signalEv>
    80002e04:	f65ff06f          	j	80002d68 <_ZN5Riscv8croutineEv+0x17c>
                case 0x31: PCB::sc_time_sleep(); break; // context switch
    80002e08:	fffff097          	auipc	ra,0xfffff
    80002e0c:	a80080e7          	jalr	-1408(ra) # 80001888 <_ZN3PCB13sc_time_sleepEv>
    80002e10:	f59ff06f          	j	80002d68 <_ZN5Riscv8croutineEv+0x17c>
                case 0x41: KConsole::sc_getc(); break;
    80002e14:	fffff097          	auipc	ra,0xfffff
    80002e18:	170080e7          	jalr	368(ra) # 80001f84 <_ZN8KConsole7sc_getcEv>
    80002e1c:	f4dff06f          	j	80002d68 <_ZN5Riscv8croutineEv+0x17c>
                case 0x42: KConsole::sc_putc(); break;
    80002e20:	fffff097          	auipc	ra,0xfffff
    80002e24:	2e4080e7          	jalr	740(ra) # 80002104 <_ZN8KConsole7sc_putcEv>
    80002e28:	f41ff06f          	j	80002d68 <_ZN5Riscv8croutineEv+0x17c>
                case 0x43: KConsole::sc_getc_output(); break; // annex
    80002e2c:	fffff097          	auipc	ra,0xfffff
    80002e30:	368080e7          	jalr	872(ra) # 80002194 <_ZN8KConsole14sc_getc_outputEv>
    80002e34:	f35ff06f          	j	80002d68 <_ZN5Riscv8croutineEv+0x17c>

0000000080002e38 <_ZN10KSemaphoreC1Ei>:
#include "../h/Riscv.hpp"
#include "../h/Scheduler.hpp"
#include "../h/KSemaphore.hpp"

KSemaphore::KSemaphore(int val)
    80002e38:	ff010113          	addi	sp,sp,-16
    80002e3c:	00813423          	sd	s0,8(sp)
    80002e40:	01010413          	addi	s0,sp,16
    : val(val), blocked() {}
    80002e44:	00b52023          	sw	a1,0(a0)
    PCBQueue(): head(nullptr), tail(nullptr) {}
    80002e48:	00053423          	sd	zero,8(a0)
    80002e4c:	00053823          	sd	zero,16(a0)
    80002e50:	00813403          	ld	s0,8(sp)
    80002e54:	01010113          	addi	sp,sp,16
    80002e58:	00008067          	ret

0000000080002e5c <_ZN10KSemaphoreD1Ev>:

KSemaphore::~KSemaphore() {
    80002e5c:	fe010113          	addi	sp,sp,-32
    80002e60:	00113c23          	sd	ra,24(sp)
    80002e64:	00813823          	sd	s0,16(sp)
    80002e68:	00913423          	sd	s1,8(sp)
    80002e6c:	02010413          	addi	s0,sp,32
    80002e70:	00050493          	mv	s1,a0
    80002e74:	01c0006f          	j	80002e90 <_ZN10KSemaphoreD1Ev+0x34>
        if (!head) tail = nullptr;
    80002e78:	0004b823          	sd	zero,16(s1)
        ret->next = nullptr;
    80002e7c:	04053423          	sd	zero,72(a0)
    PCB* pcb;
    while ((pcb = blocked.pop())) {
        pcb->backFromClosedSem = true;
    80002e80:	00100793          	li	a5,1
    80002e84:	04f50023          	sb	a5,64(a0)
        Scheduler::put(pcb);
    80002e88:	fffff097          	auipc	ra,0xfffff
    80002e8c:	3ec080e7          	jalr	1004(ra) # 80002274 <_ZN9Scheduler3putEP3PCB>
        if (!head)
    80002e90:	0084b503          	ld	a0,8(s1)
    80002e94:	00050a63          	beqz	a0,80002ea8 <_ZN10KSemaphoreD1Ev+0x4c>
        head = head->next;
    80002e98:	04853783          	ld	a5,72(a0)
    80002e9c:	00f4b423          	sd	a5,8(s1)
        if (!head) tail = nullptr;
    80002ea0:	fc079ee3          	bnez	a5,80002e7c <_ZN10KSemaphoreD1Ev+0x20>
    80002ea4:	fd5ff06f          	j	80002e78 <_ZN10KSemaphoreD1Ev+0x1c>
    }
}
    80002ea8:	01813083          	ld	ra,24(sp)
    80002eac:	01013403          	ld	s0,16(sp)
    80002eb0:	00813483          	ld	s1,8(sp)
    80002eb4:	02010113          	addi	sp,sp,32
    80002eb8:	00008067          	ret

0000000080002ebc <_ZN10KSemaphore5blockEv>:

void KSemaphore::block() {
    80002ebc:	ff010113          	addi	sp,sp,-16
    80002ec0:	00113423          	sd	ra,8(sp)
    80002ec4:	00813023          	sd	s0,0(sp)
    80002ec8:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    80002ecc:	00006797          	auipc	a5,0x6
    80002ed0:	f447b783          	ld	a5,-188(a5) # 80008e10 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002ed4:	0007b703          	ld	a4,0(a5)
    80002ed8:	00300693          	li	a3,3
    80002edc:	00d72023          	sw	a3,0(a4)
    blocked.push(PCB::running);
    80002ee0:	0007b783          	ld	a5,0(a5)
        pcb->next = nullptr;
    80002ee4:	0407b423          	sd	zero,72(a5)
        if (!head) {
    80002ee8:	00853703          	ld	a4,8(a0)
    80002eec:	02070463          	beqz	a4,80002f14 <_ZN10KSemaphore5blockEv+0x58>
            tail->next = pcb;
    80002ef0:	01053703          	ld	a4,16(a0)
    80002ef4:	04f73423          	sd	a5,72(a4)
            tail = pcb;
    80002ef8:	00f53823          	sd	a5,16(a0)
    PCB::dispatch();
    80002efc:	ffffe097          	auipc	ra,0xffffe
    80002f00:	7f4080e7          	jalr	2036(ra) # 800016f0 <_ZN3PCB8dispatchEv>
}
    80002f04:	00813083          	ld	ra,8(sp)
    80002f08:	00013403          	ld	s0,0(sp)
    80002f0c:	01010113          	addi	sp,sp,16
    80002f10:	00008067          	ret
            head = tail = pcb;
    80002f14:	00f53823          	sd	a5,16(a0)
    80002f18:	00f53423          	sd	a5,8(a0)
    80002f1c:	fe1ff06f          	j	80002efc <_ZN10KSemaphore5blockEv+0x40>

0000000080002f20 <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    80002f20:	00050793          	mv	a5,a0
        if (!head)
    80002f24:	00853503          	ld	a0,8(a0)
    80002f28:	04050463          	beqz	a0,80002f70 <_ZN10KSemaphore7unblockEv+0x50>
    80002f2c:	ff010113          	addi	sp,sp,-16
    80002f30:	00113423          	sd	ra,8(sp)
    80002f34:	00813023          	sd	s0,0(sp)
    80002f38:	01010413          	addi	s0,sp,16
        head = head->next;
    80002f3c:	04853703          	ld	a4,72(a0)
    80002f40:	00e7b423          	sd	a4,8(a5)
        if (!head) tail = nullptr;
    80002f44:	02070263          	beqz	a4,80002f68 <_ZN10KSemaphore7unblockEv+0x48>
        ret->next = nullptr;
    80002f48:	04053423          	sd	zero,72(a0)
    PCB* pcb = blocked.pop();
    if (pcb) {
        pcb->backFromClosedSem = false;
    80002f4c:	04050023          	sb	zero,64(a0)
        Scheduler::put(pcb);
    80002f50:	fffff097          	auipc	ra,0xfffff
    80002f54:	324080e7          	jalr	804(ra) # 80002274 <_ZN9Scheduler3putEP3PCB>
    }
}
    80002f58:	00813083          	ld	ra,8(sp)
    80002f5c:	00013403          	ld	s0,0(sp)
    80002f60:	01010113          	addi	sp,sp,16
    80002f64:	00008067          	ret
        if (!head) tail = nullptr;
    80002f68:	0007b823          	sd	zero,16(a5)
    80002f6c:	fddff06f          	j	80002f48 <_ZN10KSemaphore7unblockEv+0x28>
    80002f70:	00008067          	ret

0000000080002f74 <_ZN10KSemaphore4waitEv>:

uint64 KSemaphore::wait() {
    if (--val < 0)
    80002f74:	00052783          	lw	a5,0(a0)
    80002f78:	fff7879b          	addiw	a5,a5,-1
    80002f7c:	00f52023          	sw	a5,0(a0)
    80002f80:	02079713          	slli	a4,a5,0x20
    80002f84:	00074663          	bltz	a4,80002f90 <_ZN10KSemaphore4waitEv+0x1c>
        block();
    return 0;
}
    80002f88:	00000513          	li	a0,0
    80002f8c:	00008067          	ret
uint64 KSemaphore::wait() {
    80002f90:	ff010113          	addi	sp,sp,-16
    80002f94:	00113423          	sd	ra,8(sp)
    80002f98:	00813023          	sd	s0,0(sp)
    80002f9c:	01010413          	addi	s0,sp,16
        block();
    80002fa0:	00000097          	auipc	ra,0x0
    80002fa4:	f1c080e7          	jalr	-228(ra) # 80002ebc <_ZN10KSemaphore5blockEv>
}
    80002fa8:	00000513          	li	a0,0
    80002fac:	00813083          	ld	ra,8(sp)
    80002fb0:	00013403          	ld	s0,0(sp)
    80002fb4:	01010113          	addi	sp,sp,16
    80002fb8:	00008067          	ret

0000000080002fbc <_ZN10KSemaphore6signalEv>:

uint64 KSemaphore::signal() {
    if (++val <= 0)
    80002fbc:	00052783          	lw	a5,0(a0)
    80002fc0:	0017879b          	addiw	a5,a5,1
    80002fc4:	0007871b          	sext.w	a4,a5
    80002fc8:	00f52023          	sw	a5,0(a0)
    80002fcc:	00e05663          	blez	a4,80002fd8 <_ZN10KSemaphore6signalEv+0x1c>
        unblock();
    return 0;
}
    80002fd0:	00000513          	li	a0,0
    80002fd4:	00008067          	ret
uint64 KSemaphore::signal() {
    80002fd8:	ff010113          	addi	sp,sp,-16
    80002fdc:	00113423          	sd	ra,8(sp)
    80002fe0:	00813023          	sd	s0,0(sp)
    80002fe4:	01010413          	addi	s0,sp,16
        unblock();
    80002fe8:	00000097          	auipc	ra,0x0
    80002fec:	f38080e7          	jalr	-200(ra) # 80002f20 <_ZN10KSemaphore7unblockEv>
}
    80002ff0:	00000513          	li	a0,0
    80002ff4:	00813083          	ld	ra,8(sp)
    80002ff8:	00013403          	ld	s0,0(sp)
    80002ffc:	01010113          	addi	sp,sp,16
    80003000:	00008067          	ret

0000000080003004 <_ZN10KSemaphorenwEm>:

void* KSemaphore::operator new(size_t size) {
    80003004:	ff010113          	addi	sp,sp,-16
    80003008:	00113423          	sd	ra,8(sp)
    8000300c:	00813023          	sd	s0,0(sp)
    80003010:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    80003014:	00000097          	auipc	ra,0x0
    80003018:	b0c080e7          	jalr	-1268(ra) # 80002b20 <_ZN15MemoryAllocator7kmallocEm>
}
    8000301c:	00813083          	ld	ra,8(sp)
    80003020:	00013403          	ld	s0,0(sp)
    80003024:	01010113          	addi	sp,sp,16
    80003028:	00008067          	ret

000000008000302c <_ZN10KSemaphoredlEPv>:
void KSemaphore::operator delete(void* ptr) {
    8000302c:	ff010113          	addi	sp,sp,-16
    80003030:	00113423          	sd	ra,8(sp)
    80003034:	00813023          	sd	s0,0(sp)
    80003038:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(ptr);
    8000303c:	00000097          	auipc	ra,0x0
    80003040:	b0c080e7          	jalr	-1268(ra) # 80002b48 <_ZN15MemoryAllocator5kfreeEPv>
}
    80003044:	00813083          	ld	ra,8(sp)
    80003048:	00013403          	ld	s0,0(sp)
    8000304c:	01010113          	addi	sp,sp,16
    80003050:	00008067          	ret

0000000080003054 <_ZN10KSemaphore11sc_sem_waitEv>:


// ----- SYSTEM CALLS -----

void KSemaphore::sc_sem_wait() {
    80003054:	ff010113          	addi	sp,sp,-16
    80003058:	00113423          	sd	ra,8(sp)
    8000305c:	00813023          	sd	s0,0(sp)
    80003060:	01010413          	addi	s0,sp,16
    KSemaphore* kSem = (KSemaphore*) Riscv::r_a(1);
    80003064:	00100513          	li	a0,1
    80003068:	00000097          	auipc	ra,0x0
    8000306c:	8c0080e7          	jalr	-1856(ra) # 80002928 <_ZN5Riscv3r_aEm>
    kSem->wait();
    80003070:	00000097          	auipc	ra,0x0
    80003074:	f04080e7          	jalr	-252(ra) # 80002f74 <_ZN10KSemaphore4waitEv>
    if (PCB::running->backFromClosedSem)
    80003078:	00006797          	auipc	a5,0x6
    8000307c:	d987b783          	ld	a5,-616(a5) # 80008e10 <_GLOBAL_OFFSET_TABLE_+0x50>
    80003080:	0007b783          	ld	a5,0(a5)
    80003084:	0407c783          	lbu	a5,64(a5)
    80003088:	02078063          	beqz	a5,800030a8 <_ZN10KSemaphore11sc_sem_waitEv+0x54>
        Riscv::w_a0(-1);
    8000308c:	fff00513          	li	a0,-1
    80003090:	00000097          	auipc	ra,0x0
    80003094:	8d0080e7          	jalr	-1840(ra) # 80002960 <_ZN5Riscv4w_a0Em>
    else
        Riscv::w_a0(0);
}
    80003098:	00813083          	ld	ra,8(sp)
    8000309c:	00013403          	ld	s0,0(sp)
    800030a0:	01010113          	addi	sp,sp,16
    800030a4:	00008067          	ret
        Riscv::w_a0(0);
    800030a8:	00000513          	li	a0,0
    800030ac:	00000097          	auipc	ra,0x0
    800030b0:	8b4080e7          	jalr	-1868(ra) # 80002960 <_ZN5Riscv4w_a0Em>
}
    800030b4:	fe5ff06f          	j	80003098 <_ZN10KSemaphore11sc_sem_waitEv+0x44>

00000000800030b8 <_ZN10KSemaphore13sc_sem_signalEv>:

void KSemaphore::sc_sem_signal() {
    800030b8:	ff010113          	addi	sp,sp,-16
    800030bc:	00113423          	sd	ra,8(sp)
    800030c0:	00813023          	sd	s0,0(sp)
    800030c4:	01010413          	addi	s0,sp,16
    KSemaphore *kSem = (KSemaphore*) Riscv::r_a(1);
    800030c8:	00100513          	li	a0,1
    800030cc:	00000097          	auipc	ra,0x0
    800030d0:	85c080e7          	jalr	-1956(ra) # 80002928 <_ZN5Riscv3r_aEm>
    if (kSem == nullptr) {
    800030d4:	02051063          	bnez	a0,800030f4 <_ZN10KSemaphore13sc_sem_signalEv+0x3c>
        Riscv::w_a0(-1);
    800030d8:	fff00513          	li	a0,-1
    800030dc:	00000097          	auipc	ra,0x0
    800030e0:	884080e7          	jalr	-1916(ra) # 80002960 <_ZN5Riscv4w_a0Em>
    }
    else {
        kSem->signal();
        Riscv::w_a0(0);
    }
}
    800030e4:	00813083          	ld	ra,8(sp)
    800030e8:	00013403          	ld	s0,0(sp)
    800030ec:	01010113          	addi	sp,sp,16
    800030f0:	00008067          	ret
        kSem->signal();
    800030f4:	00000097          	auipc	ra,0x0
    800030f8:	ec8080e7          	jalr	-312(ra) # 80002fbc <_ZN10KSemaphore6signalEv>
        Riscv::w_a0(0);
    800030fc:	00000513          	li	a0,0
    80003100:	00000097          	auipc	ra,0x0
    80003104:	860080e7          	jalr	-1952(ra) # 80002960 <_ZN5Riscv4w_a0Em>
}
    80003108:	fddff06f          	j	800030e4 <_ZN10KSemaphore13sc_sem_signalEv+0x2c>

000000008000310c <_ZN10KSemaphore11sc_sem_openEv>:

void KSemaphore::sc_sem_open() {
    8000310c:	fd010113          	addi	sp,sp,-48
    80003110:	02113423          	sd	ra,40(sp)
    80003114:	02813023          	sd	s0,32(sp)
    80003118:	00913c23          	sd	s1,24(sp)
    8000311c:	01213823          	sd	s2,16(sp)
    80003120:	01313423          	sd	s3,8(sp)
    80003124:	03010413          	addi	s0,sp,48
    KSemaphore** handle = (KSemaphore**) Riscv::r_a(1);
    80003128:	00100513          	li	a0,1
    8000312c:	fffff097          	auipc	ra,0xfffff
    80003130:	7fc080e7          	jalr	2044(ra) # 80002928 <_ZN5Riscv3r_aEm>
    80003134:	00050913          	mv	s2,a0
    uint64 val = Riscv::r_a(2);
    80003138:	00200513          	li	a0,2
    8000313c:	fffff097          	auipc	ra,0xfffff
    80003140:	7ec080e7          	jalr	2028(ra) # 80002928 <_ZN5Riscv3r_aEm>
    80003144:	00050993          	mv	s3,a0

    KSemaphore* newSem = new KSemaphore((int)val);
    80003148:	01800513          	li	a0,24
    8000314c:	00000097          	auipc	ra,0x0
    80003150:	eb8080e7          	jalr	-328(ra) # 80003004 <_ZN10KSemaphorenwEm>
    80003154:	00050493          	mv	s1,a0
    80003158:	0009859b          	sext.w	a1,s3
    8000315c:	00000097          	auipc	ra,0x0
    80003160:	cdc080e7          	jalr	-804(ra) # 80002e38 <_ZN10KSemaphoreC1Ei>

    (*handle) = newSem;
    80003164:	00993023          	sd	s1,0(s2)

    if (!newSem) Riscv::w_a0(-1);
    80003168:	02048663          	beqz	s1,80003194 <_ZN10KSemaphore11sc_sem_openEv+0x88>
    else Riscv::w_a0(0);
    8000316c:	00000513          	li	a0,0
    80003170:	fffff097          	auipc	ra,0xfffff
    80003174:	7f0080e7          	jalr	2032(ra) # 80002960 <_ZN5Riscv4w_a0Em>
}
    80003178:	02813083          	ld	ra,40(sp)
    8000317c:	02013403          	ld	s0,32(sp)
    80003180:	01813483          	ld	s1,24(sp)
    80003184:	01013903          	ld	s2,16(sp)
    80003188:	00813983          	ld	s3,8(sp)
    8000318c:	03010113          	addi	sp,sp,48
    80003190:	00008067          	ret
    if (!newSem) Riscv::w_a0(-1);
    80003194:	fff00513          	li	a0,-1
    80003198:	fffff097          	auipc	ra,0xfffff
    8000319c:	7c8080e7          	jalr	1992(ra) # 80002960 <_ZN5Riscv4w_a0Em>
    800031a0:	fd9ff06f          	j	80003178 <_ZN10KSemaphore11sc_sem_openEv+0x6c>

00000000800031a4 <_ZN10KSemaphore12sc_sem_closeEv>:

void KSemaphore::sc_sem_close() {
    800031a4:	fe010113          	addi	sp,sp,-32
    800031a8:	00113c23          	sd	ra,24(sp)
    800031ac:	00813823          	sd	s0,16(sp)
    800031b0:	00913423          	sd	s1,8(sp)
    800031b4:	02010413          	addi	s0,sp,32
    KSemaphore* kSem = (KSemaphore*) Riscv::r_a(1);
    800031b8:	00100513          	li	a0,1
    800031bc:	fffff097          	auipc	ra,0xfffff
    800031c0:	76c080e7          	jalr	1900(ra) # 80002928 <_ZN5Riscv3r_aEm>
    delete kSem;
    800031c4:	02051263          	bnez	a0,800031e8 <_ZN10KSemaphore12sc_sem_closeEv+0x44>
    Riscv::w_a0(0);
    800031c8:	00000513          	li	a0,0
    800031cc:	fffff097          	auipc	ra,0xfffff
    800031d0:	794080e7          	jalr	1940(ra) # 80002960 <_ZN5Riscv4w_a0Em>
}
    800031d4:	01813083          	ld	ra,24(sp)
    800031d8:	01013403          	ld	s0,16(sp)
    800031dc:	00813483          	ld	s1,8(sp)
    800031e0:	02010113          	addi	sp,sp,32
    800031e4:	00008067          	ret
    800031e8:	00050493          	mv	s1,a0
    delete kSem;
    800031ec:	00000097          	auipc	ra,0x0
    800031f0:	c70080e7          	jalr	-912(ra) # 80002e5c <_ZN10KSemaphoreD1Ev>
    800031f4:	00048513          	mv	a0,s1
    800031f8:	00000097          	auipc	ra,0x0
    800031fc:	e34080e7          	jalr	-460(ra) # 8000302c <_ZN10KSemaphoredlEPv>
    80003200:	fc9ff06f          	j	800031c8 <_ZN10KSemaphore12sc_sem_closeEv+0x24>

0000000080003204 <_ZN6Kernel15userMainWrapperEPv>:
    }
    terminate();
}

void userMain();
void Kernel::userMainWrapper(void* _) {
    80003204:	ff010113          	addi	sp,sp,-16
    80003208:	00113423          	sd	ra,8(sp)
    8000320c:	00813023          	sd	s0,0(sp)
    80003210:	01010413          	addi	s0,sp,16
    userMain();
    80003214:	00001097          	auipc	ra,0x1
    80003218:	184080e7          	jalr	388(ra) # 80004398 <_Z8userMainv>
}
    8000321c:	00813083          	ld	ra,8(sp)
    80003220:	00013403          	ld	s0,0(sp)
    80003224:	01010113          	addi	sp,sp,16
    80003228:	00008067          	ret

000000008000322c <_ZN6Kernel10initializeEv>:
void Kernel::initialize() {
    8000322c:	fe010113          	addi	sp,sp,-32
    80003230:	00113c23          	sd	ra,24(sp)
    80003234:	00813823          	sd	s0,16(sp)
    80003238:	00913423          	sd	s1,8(sp)
    8000323c:	01213023          	sd	s2,0(sp)
    80003240:	02010413          	addi	s0,sp,32
    Riscv::w_stvec((uint64) Riscv::sroutine);
    80003244:	00006797          	auipc	a5,0x6
    80003248:	bac7b783          	ld	a5,-1108(a5) # 80008df0 <_GLOBAL_OFFSET_TABLE_+0x30>
    __asm__ volatile("csrw stvec, %0" : : "r"(stvec));
    8000324c:	10579073          	csrw	stvec,a5
    PCB::initialize();
    80003250:	ffffe097          	auipc	ra,0xffffe
    80003254:	3dc080e7          	jalr	988(ra) # 8000162c <_ZN3PCB10initializeEv>
    KConsole::initialize();
    80003258:	fffff097          	auipc	ra,0xfffff
    8000325c:	90c080e7          	jalr	-1780(ra) # 80001b64 <_ZN8KConsole10initializeEv>
    systemThread = new PCB(0, 0, 0, 0);
    80003260:	06000513          	li	a0,96
    80003264:	ffffe097          	auipc	ra,0xffffe
    80003268:	568080e7          	jalr	1384(ra) # 800017cc <_ZN3PCBnwEm>
    8000326c:	00050493          	mv	s1,a0
    80003270:	00000713          	li	a4,0
    80003274:	00000693          	li	a3,0
    80003278:	00000613          	li	a2,0
    8000327c:	00000593          	li	a1,0
    80003280:	ffffe097          	auipc	ra,0xffffe
    80003284:	3c4080e7          	jalr	964(ra) # 80001644 <_ZN3PCBC1EPFvPvES0_S0_m>
    80003288:	00006797          	auipc	a5,0x6
    8000328c:	c497b023          	sd	s1,-960(a5) # 80008ec8 <_ZN6Kernel12systemThreadE>
    systemThread->privileged = true;
    80003290:	00100793          	li	a5,1
    80003294:	02f48823          	sb	a5,48(s1)
    PCB::running = systemThread;
    80003298:	00006797          	auipc	a5,0x6
    8000329c:	b787b783          	ld	a5,-1160(a5) # 80008e10 <_GLOBAL_OFFSET_TABLE_+0x50>
    800032a0:	0097b023          	sd	s1,0(a5)
    800032a4:	00200793          	li	a5,2
    800032a8:	00f4a023          	sw	a5,0(s1)
    consoleThread = new PCB(KConsole::sendCharactersToConsole, nullptr);
    800032ac:	00001537          	lui	a0,0x1
    800032b0:	00000097          	auipc	ra,0x0
    800032b4:	870080e7          	jalr	-1936(ra) # 80002b20 <_ZN15MemoryAllocator7kmallocEm>
    800032b8:	00050913          	mv	s2,a0
    800032bc:	06000513          	li	a0,96
    800032c0:	ffffe097          	auipc	ra,0xffffe
    800032c4:	50c080e7          	jalr	1292(ra) # 800017cc <_ZN3PCBnwEm>
    800032c8:	00050493          	mv	s1,a0
    800032cc:	00200713          	li	a4,2
    800032d0:	00090693          	mv	a3,s2
    800032d4:	00000613          	li	a2,0
    800032d8:	00006597          	auipc	a1,0x6
    800032dc:	b305b583          	ld	a1,-1232(a1) # 80008e08 <_GLOBAL_OFFSET_TABLE_+0x48>
    800032e0:	ffffe097          	auipc	ra,0xffffe
    800032e4:	364080e7          	jalr	868(ra) # 80001644 <_ZN3PCBC1EPFvPvES0_S0_m>
    800032e8:	00006797          	auipc	a5,0x6
    800032ec:	be97b423          	sd	s1,-1048(a5) # 80008ed0 <_ZN6Kernel13consoleThreadE>
    consoleThread->privileged = true;
    800032f0:	00100793          	li	a5,1
    800032f4:	02f48823          	sb	a5,48(s1)
    consoleThread->start();
    800032f8:	00048513          	mv	a0,s1
    800032fc:	ffffe097          	auipc	ra,0xffffe
    80003300:	3cc080e7          	jalr	972(ra) # 800016c8 <_ZN3PCB5startEv>
    userThread = new PCB(userMainWrapper, nullptr);
    80003304:	00001537          	lui	a0,0x1
    80003308:	00000097          	auipc	ra,0x0
    8000330c:	818080e7          	jalr	-2024(ra) # 80002b20 <_ZN15MemoryAllocator7kmallocEm>
    80003310:	00050913          	mv	s2,a0
    80003314:	06000513          	li	a0,96
    80003318:	ffffe097          	auipc	ra,0xffffe
    8000331c:	4b4080e7          	jalr	1204(ra) # 800017cc <_ZN3PCBnwEm>
    80003320:	00050493          	mv	s1,a0
    80003324:	00200713          	li	a4,2
    80003328:	00090693          	mv	a3,s2
    8000332c:	00000613          	li	a2,0
    80003330:	00000597          	auipc	a1,0x0
    80003334:	ed458593          	addi	a1,a1,-300 # 80003204 <_ZN6Kernel15userMainWrapperEPv>
    80003338:	ffffe097          	auipc	ra,0xffffe
    8000333c:	30c080e7          	jalr	780(ra) # 80001644 <_ZN3PCBC1EPFvPvES0_S0_m>
    80003340:	00006917          	auipc	s2,0x6
    80003344:	b8890913          	addi	s2,s2,-1144 # 80008ec8 <_ZN6Kernel12systemThreadE>
    80003348:	00993823          	sd	s1,16(s2)
    userThread->privileged = false;
    8000334c:	02048823          	sb	zero,48(s1)
    userThread->start();
    80003350:	00048513          	mv	a0,s1
    80003354:	ffffe097          	auipc	ra,0xffffe
    80003358:	374080e7          	jalr	884(ra) # 800016c8 <_ZN3PCB5startEv>
    state = RUNNING;
    8000335c:	00100793          	li	a5,1
    80003360:	00f92c23          	sw	a5,24(s2)
    __asm__ volatile("csrs sstatus, %0" : : "r"(mask));
    80003364:	00200793          	li	a5,2
    80003368:	1007a073          	csrs	sstatus,a5
}
    8000336c:	01813083          	ld	ra,24(sp)
    80003370:	01013403          	ld	s0,16(sp)
    80003374:	00813483          	ld	s1,8(sp)
    80003378:	00013903          	ld	s2,0(sp)
    8000337c:	02010113          	addi	sp,sp,32
    80003380:	00008067          	ret
    80003384:	00050913          	mv	s2,a0
    systemThread = new PCB(0, 0, 0, 0);
    80003388:	00048513          	mv	a0,s1
    8000338c:	ffffe097          	auipc	ra,0xffffe
    80003390:	468080e7          	jalr	1128(ra) # 800017f4 <_ZN3PCBdlEPv>
    80003394:	00090513          	mv	a0,s2
    80003398:	00007097          	auipc	ra,0x7
    8000339c:	c50080e7          	jalr	-944(ra) # 80009fe8 <_Unwind_Resume>
    800033a0:	00050913          	mv	s2,a0
    consoleThread = new PCB(KConsole::sendCharactersToConsole, nullptr);
    800033a4:	00048513          	mv	a0,s1
    800033a8:	ffffe097          	auipc	ra,0xffffe
    800033ac:	44c080e7          	jalr	1100(ra) # 800017f4 <_ZN3PCBdlEPv>
    800033b0:	00090513          	mv	a0,s2
    800033b4:	00007097          	auipc	ra,0x7
    800033b8:	c34080e7          	jalr	-972(ra) # 80009fe8 <_Unwind_Resume>
    800033bc:	00050913          	mv	s2,a0
    userThread = new PCB(userMainWrapper, nullptr);
    800033c0:	00048513          	mv	a0,s1
    800033c4:	ffffe097          	auipc	ra,0xffffe
    800033c8:	430080e7          	jalr	1072(ra) # 800017f4 <_ZN3PCBdlEPv>
    800033cc:	00090513          	mv	a0,s2
    800033d0:	00007097          	auipc	ra,0x7
    800033d4:	c18080e7          	jalr	-1000(ra) # 80009fe8 <_Unwind_Resume>

00000000800033d8 <_ZN6Kernel9terminateEv>:
void Kernel::terminate() {
    800033d8:	ff010113          	addi	sp,sp,-16
    800033dc:	00113423          	sd	ra,8(sp)
    800033e0:	00813023          	sd	s0,0(sp)
    800033e4:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrc sstatus, %0" : : "r"(mask));
    800033e8:	00200793          	li	a5,2
    800033ec:	1007b073          	csrc	sstatus,a5
    state = FINISHED;
    800033f0:	00006717          	auipc	a4,0x6
    800033f4:	aef72823          	sw	a5,-1296(a4) # 80008ee0 <_ZN6Kernel5stateE>
    while (Scheduler::get());
    800033f8:	fffff097          	auipc	ra,0xfffff
    800033fc:	ed4080e7          	jalr	-300(ra) # 800022cc <_ZN9Scheduler3getEv>
    80003400:	fe051ce3          	bnez	a0,800033f8 <_ZN6Kernel9terminateEv+0x20>
    Scheduler::put(consoleThread);
    80003404:	00006517          	auipc	a0,0x6
    80003408:	acc53503          	ld	a0,-1332(a0) # 80008ed0 <_ZN6Kernel13consoleThreadE>
    8000340c:	fffff097          	auipc	ra,0xfffff
    80003410:	e68080e7          	jalr	-408(ra) # 80002274 <_ZN9Scheduler3putEP3PCB>
    __asm__ volatile("csrs sstatus, %0" : : "r"(mask));
    80003414:	00200793          	li	a5,2
    80003418:	1007a073          	csrs	sstatus,a5
    while (!consoleThread->finished())
    8000341c:	00006797          	auipc	a5,0x6
    80003420:	ab47b783          	ld	a5,-1356(a5) # 80008ed0 <_ZN6Kernel13consoleThreadE>
    bool finished() { return state == FINISHED; }
    80003424:	0007a703          	lw	a4,0(a5)
    80003428:	00500793          	li	a5,5
    8000342c:	00f70863          	beq	a4,a5,8000343c <_ZN6Kernel9terminateEv+0x64>
        thread_dispatch();
    80003430:	ffffe097          	auipc	ra,0xffffe
    80003434:	f38080e7          	jalr	-200(ra) # 80001368 <_Z15thread_dispatchv>
    while (!consoleThread->finished())
    80003438:	fe5ff06f          	j	8000341c <_ZN6Kernel9terminateEv+0x44>
    __asm__ volatile("csrc sstatus, %0" : : "r"(mask));
    8000343c:	00200793          	li	a5,2
    80003440:	1007b073          	csrc	sstatus,a5
}
    80003444:	00813083          	ld	ra,8(sp)
    80003448:	00013403          	ld	s0,0(sp)
    8000344c:	01010113          	addi	sp,sp,16
    80003450:	00008067          	ret

0000000080003454 <_ZN6Kernel4mainEv>:
void Kernel::main() {
    80003454:	ff010113          	addi	sp,sp,-16
    80003458:	00113423          	sd	ra,8(sp)
    8000345c:	00813023          	sd	s0,0(sp)
    80003460:	01010413          	addi	s0,sp,16
    initialize();
    80003464:	00000097          	auipc	ra,0x0
    80003468:	dc8080e7          	jalr	-568(ra) # 8000322c <_ZN6Kernel10initializeEv>
    while (!userThread->finished()) {
    8000346c:	00006797          	auipc	a5,0x6
    80003470:	a6c7b783          	ld	a5,-1428(a5) # 80008ed8 <_ZN6Kernel10userThreadE>
    80003474:	0007a703          	lw	a4,0(a5)
    80003478:	00500793          	li	a5,5
    8000347c:	00f70863          	beq	a4,a5,8000348c <_ZN6Kernel4mainEv+0x38>
        thread_dispatch();
    80003480:	ffffe097          	auipc	ra,0xffffe
    80003484:	ee8080e7          	jalr	-280(ra) # 80001368 <_Z15thread_dispatchv>
    while (!userThread->finished()) {
    80003488:	fe5ff06f          	j	8000346c <_ZN6Kernel4mainEv+0x18>
    terminate();
    8000348c:	00000097          	auipc	ra,0x0
    80003490:	f4c080e7          	jalr	-180(ra) # 800033d8 <_ZN6Kernel9terminateEv>
}
    80003494:	00813083          	ld	ra,8(sp)
    80003498:	00013403          	ld	s0,0(sp)
    8000349c:	01010113          	addi	sp,sp,16
    800034a0:	00008067          	ret

00000000800034a4 <main>:

void main() {
    800034a4:	ff010113          	addi	sp,sp,-16
    800034a8:	00113423          	sd	ra,8(sp)
    800034ac:	00813023          	sd	s0,0(sp)
    800034b0:	01010413          	addi	s0,sp,16
    Kernel::main();
    800034b4:	00000097          	auipc	ra,0x0
    800034b8:	fa0080e7          	jalr	-96(ra) # 80003454 <_ZN6Kernel4mainEv>
}
    800034bc:	00813083          	ld	ra,8(sp)
    800034c0:	00013403          	ld	s0,0(sp)
    800034c4:	01010113          	addi	sp,sp,16
    800034c8:	00008067          	ret

00000000800034cc <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    800034cc:	fe010113          	addi	sp,sp,-32
    800034d0:	00113c23          	sd	ra,24(sp)
    800034d4:	00813823          	sd	s0,16(sp)
    800034d8:	00913423          	sd	s1,8(sp)
    800034dc:	02010413          	addi	s0,sp,32
    800034e0:	00050493          	mv	s1,a0
    LOCK();
    800034e4:	00100613          	li	a2,1
    800034e8:	00000593          	li	a1,0
    800034ec:	00006517          	auipc	a0,0x6
    800034f0:	9fc50513          	addi	a0,a0,-1540 # 80008ee8 <lockPrint>
    800034f4:	ffffe097          	auipc	ra,0xffffe
    800034f8:	d44080e7          	jalr	-700(ra) # 80001238 <copy_and_swap>
    800034fc:	fe0514e3          	bnez	a0,800034e4 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80003500:	0004c503          	lbu	a0,0(s1)
    80003504:	00050a63          	beqz	a0,80003518 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    80003508:	ffffe097          	auipc	ra,0xffffe
    8000350c:	08c080e7          	jalr	140(ra) # 80001594 <_Z4putcc>
        string++;
    80003510:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80003514:	fedff06f          	j	80003500 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80003518:	00000613          	li	a2,0
    8000351c:	00100593          	li	a1,1
    80003520:	00006517          	auipc	a0,0x6
    80003524:	9c850513          	addi	a0,a0,-1592 # 80008ee8 <lockPrint>
    80003528:	ffffe097          	auipc	ra,0xffffe
    8000352c:	d10080e7          	jalr	-752(ra) # 80001238 <copy_and_swap>
    80003530:	fe0514e3          	bnez	a0,80003518 <_Z11printStringPKc+0x4c>
}
    80003534:	01813083          	ld	ra,24(sp)
    80003538:	01013403          	ld	s0,16(sp)
    8000353c:	00813483          	ld	s1,8(sp)
    80003540:	02010113          	addi	sp,sp,32
    80003544:	00008067          	ret

0000000080003548 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80003548:	fd010113          	addi	sp,sp,-48
    8000354c:	02113423          	sd	ra,40(sp)
    80003550:	02813023          	sd	s0,32(sp)
    80003554:	00913c23          	sd	s1,24(sp)
    80003558:	01213823          	sd	s2,16(sp)
    8000355c:	01313423          	sd	s3,8(sp)
    80003560:	01413023          	sd	s4,0(sp)
    80003564:	03010413          	addi	s0,sp,48
    80003568:	00050993          	mv	s3,a0
    8000356c:	00058a13          	mv	s4,a1
    LOCK();
    80003570:	00100613          	li	a2,1
    80003574:	00000593          	li	a1,0
    80003578:	00006517          	auipc	a0,0x6
    8000357c:	97050513          	addi	a0,a0,-1680 # 80008ee8 <lockPrint>
    80003580:	ffffe097          	auipc	ra,0xffffe
    80003584:	cb8080e7          	jalr	-840(ra) # 80001238 <copy_and_swap>
    80003588:	fe0514e3          	bnez	a0,80003570 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    8000358c:	00000913          	li	s2,0
    80003590:	00090493          	mv	s1,s2
    80003594:	0019091b          	addiw	s2,s2,1
    80003598:	03495a63          	bge	s2,s4,800035cc <_Z9getStringPci+0x84>
        cc = getc();
    8000359c:	ffffe097          	auipc	ra,0xffffe
    800035a0:	fcc080e7          	jalr	-52(ra) # 80001568 <_Z4getcv>
        if(cc < 1)
    800035a4:	02050463          	beqz	a0,800035cc <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    800035a8:	009984b3          	add	s1,s3,s1
    800035ac:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800035b0:	00a00793          	li	a5,10
    800035b4:	00f50a63          	beq	a0,a5,800035c8 <_Z9getStringPci+0x80>
    800035b8:	00d00793          	li	a5,13
    800035bc:	fcf51ae3          	bne	a0,a5,80003590 <_Z9getStringPci+0x48>
        buf[i++] = c;
    800035c0:	00090493          	mv	s1,s2
    800035c4:	0080006f          	j	800035cc <_Z9getStringPci+0x84>
    800035c8:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800035cc:	009984b3          	add	s1,s3,s1
    800035d0:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800035d4:	00000613          	li	a2,0
    800035d8:	00100593          	li	a1,1
    800035dc:	00006517          	auipc	a0,0x6
    800035e0:	90c50513          	addi	a0,a0,-1780 # 80008ee8 <lockPrint>
    800035e4:	ffffe097          	auipc	ra,0xffffe
    800035e8:	c54080e7          	jalr	-940(ra) # 80001238 <copy_and_swap>
    800035ec:	fe0514e3          	bnez	a0,800035d4 <_Z9getStringPci+0x8c>
    return buf;
}
    800035f0:	00098513          	mv	a0,s3
    800035f4:	02813083          	ld	ra,40(sp)
    800035f8:	02013403          	ld	s0,32(sp)
    800035fc:	01813483          	ld	s1,24(sp)
    80003600:	01013903          	ld	s2,16(sp)
    80003604:	00813983          	ld	s3,8(sp)
    80003608:	00013a03          	ld	s4,0(sp)
    8000360c:	03010113          	addi	sp,sp,48
    80003610:	00008067          	ret

0000000080003614 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80003614:	ff010113          	addi	sp,sp,-16
    80003618:	00813423          	sd	s0,8(sp)
    8000361c:	01010413          	addi	s0,sp,16
    80003620:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80003624:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80003628:	0006c603          	lbu	a2,0(a3)
    8000362c:	fd06071b          	addiw	a4,a2,-48
    80003630:	0ff77713          	andi	a4,a4,255
    80003634:	00900793          	li	a5,9
    80003638:	02e7e063          	bltu	a5,a4,80003658 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    8000363c:	0025179b          	slliw	a5,a0,0x2
    80003640:	00a787bb          	addw	a5,a5,a0
    80003644:	0017979b          	slliw	a5,a5,0x1
    80003648:	00168693          	addi	a3,a3,1
    8000364c:	00c787bb          	addw	a5,a5,a2
    80003650:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80003654:	fd5ff06f          	j	80003628 <_Z11stringToIntPKc+0x14>
    return n;
}
    80003658:	00813403          	ld	s0,8(sp)
    8000365c:	01010113          	addi	sp,sp,16
    80003660:	00008067          	ret

0000000080003664 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80003664:	fc010113          	addi	sp,sp,-64
    80003668:	02113c23          	sd	ra,56(sp)
    8000366c:	02813823          	sd	s0,48(sp)
    80003670:	02913423          	sd	s1,40(sp)
    80003674:	03213023          	sd	s2,32(sp)
    80003678:	01313c23          	sd	s3,24(sp)
    8000367c:	04010413          	addi	s0,sp,64
    80003680:	00050493          	mv	s1,a0
    80003684:	00058913          	mv	s2,a1
    80003688:	00060993          	mv	s3,a2
    LOCK();
    8000368c:	00100613          	li	a2,1
    80003690:	00000593          	li	a1,0
    80003694:	00006517          	auipc	a0,0x6
    80003698:	85450513          	addi	a0,a0,-1964 # 80008ee8 <lockPrint>
    8000369c:	ffffe097          	auipc	ra,0xffffe
    800036a0:	b9c080e7          	jalr	-1124(ra) # 80001238 <copy_and_swap>
    800036a4:	fe0514e3          	bnez	a0,8000368c <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    800036a8:	00098463          	beqz	s3,800036b0 <_Z8printIntiii+0x4c>
    800036ac:	0804c463          	bltz	s1,80003734 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800036b0:	0004851b          	sext.w	a0,s1
    neg = 0;
    800036b4:	00000593          	li	a1,0
    }

    i = 0;
    800036b8:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    800036bc:	0009079b          	sext.w	a5,s2
    800036c0:	0325773b          	remuw	a4,a0,s2
    800036c4:	00048613          	mv	a2,s1
    800036c8:	0014849b          	addiw	s1,s1,1
    800036cc:	02071693          	slli	a3,a4,0x20
    800036d0:	0206d693          	srli	a3,a3,0x20
    800036d4:	00005717          	auipc	a4,0x5
    800036d8:	65c70713          	addi	a4,a4,1628 # 80008d30 <digits>
    800036dc:	00d70733          	add	a4,a4,a3
    800036e0:	00074683          	lbu	a3,0(a4)
    800036e4:	fd040713          	addi	a4,s0,-48
    800036e8:	00c70733          	add	a4,a4,a2
    800036ec:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800036f0:	0005071b          	sext.w	a4,a0
    800036f4:	0325553b          	divuw	a0,a0,s2
    800036f8:	fcf772e3          	bgeu	a4,a5,800036bc <_Z8printIntiii+0x58>
    if(neg)
    800036fc:	00058c63          	beqz	a1,80003714 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80003700:	fd040793          	addi	a5,s0,-48
    80003704:	009784b3          	add	s1,a5,s1
    80003708:	02d00793          	li	a5,45
    8000370c:	fef48823          	sb	a5,-16(s1)
    80003710:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80003714:	fff4849b          	addiw	s1,s1,-1
    80003718:	0204c463          	bltz	s1,80003740 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    8000371c:	fd040793          	addi	a5,s0,-48
    80003720:	009787b3          	add	a5,a5,s1
    80003724:	ff07c503          	lbu	a0,-16(a5)
    80003728:	ffffe097          	auipc	ra,0xffffe
    8000372c:	e6c080e7          	jalr	-404(ra) # 80001594 <_Z4putcc>
    80003730:	fe5ff06f          	j	80003714 <_Z8printIntiii+0xb0>
        x = -xx;
    80003734:	4090053b          	negw	a0,s1
        neg = 1;
    80003738:	00100593          	li	a1,1
        x = -xx;
    8000373c:	f7dff06f          	j	800036b8 <_Z8printIntiii+0x54>

    UNLOCK();
    80003740:	00000613          	li	a2,0
    80003744:	00100593          	li	a1,1
    80003748:	00005517          	auipc	a0,0x5
    8000374c:	7a050513          	addi	a0,a0,1952 # 80008ee8 <lockPrint>
    80003750:	ffffe097          	auipc	ra,0xffffe
    80003754:	ae8080e7          	jalr	-1304(ra) # 80001238 <copy_and_swap>
    80003758:	fe0514e3          	bnez	a0,80003740 <_Z8printIntiii+0xdc>
    8000375c:	03813083          	ld	ra,56(sp)
    80003760:	03013403          	ld	s0,48(sp)
    80003764:	02813483          	ld	s1,40(sp)
    80003768:	02013903          	ld	s2,32(sp)
    8000376c:	01813983          	ld	s3,24(sp)
    80003770:	04010113          	addi	sp,sp,64
    80003774:	00008067          	ret

0000000080003778 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80003778:	fd010113          	addi	sp,sp,-48
    8000377c:	02113423          	sd	ra,40(sp)
    80003780:	02813023          	sd	s0,32(sp)
    80003784:	00913c23          	sd	s1,24(sp)
    80003788:	01213823          	sd	s2,16(sp)
    8000378c:	01313423          	sd	s3,8(sp)
    80003790:	03010413          	addi	s0,sp,48
    80003794:	00050493          	mv	s1,a0
    80003798:	00058913          	mv	s2,a1
    8000379c:	0015879b          	addiw	a5,a1,1
    800037a0:	0007851b          	sext.w	a0,a5
    800037a4:	00f4a023          	sw	a5,0(s1)
    800037a8:	0004a823          	sw	zero,16(s1)
    800037ac:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800037b0:	00251513          	slli	a0,a0,0x2
    800037b4:	ffffe097          	auipc	ra,0xffffe
    800037b8:	aa4080e7          	jalr	-1372(ra) # 80001258 <_Z9mem_allocm>
    800037bc:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    800037c0:	01000513          	li	a0,16
    800037c4:	fffff097          	auipc	ra,0xfffff
    800037c8:	d1c080e7          	jalr	-740(ra) # 800024e0 <_Znwm>
    800037cc:	00050993          	mv	s3,a0
    800037d0:	00000593          	li	a1,0
    800037d4:	fffff097          	auipc	ra,0xfffff
    800037d8:	f98080e7          	jalr	-104(ra) # 8000276c <_ZN9SemaphoreC1Ej>
    800037dc:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    800037e0:	01000513          	li	a0,16
    800037e4:	fffff097          	auipc	ra,0xfffff
    800037e8:	cfc080e7          	jalr	-772(ra) # 800024e0 <_Znwm>
    800037ec:	00050993          	mv	s3,a0
    800037f0:	00090593          	mv	a1,s2
    800037f4:	fffff097          	auipc	ra,0xfffff
    800037f8:	f78080e7          	jalr	-136(ra) # 8000276c <_ZN9SemaphoreC1Ej>
    800037fc:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80003800:	01000513          	li	a0,16
    80003804:	fffff097          	auipc	ra,0xfffff
    80003808:	cdc080e7          	jalr	-804(ra) # 800024e0 <_Znwm>
    8000380c:	00050913          	mv	s2,a0
    80003810:	00100593          	li	a1,1
    80003814:	fffff097          	auipc	ra,0xfffff
    80003818:	f58080e7          	jalr	-168(ra) # 8000276c <_ZN9SemaphoreC1Ej>
    8000381c:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80003820:	01000513          	li	a0,16
    80003824:	fffff097          	auipc	ra,0xfffff
    80003828:	cbc080e7          	jalr	-836(ra) # 800024e0 <_Znwm>
    8000382c:	00050913          	mv	s2,a0
    80003830:	00100593          	li	a1,1
    80003834:	fffff097          	auipc	ra,0xfffff
    80003838:	f38080e7          	jalr	-200(ra) # 8000276c <_ZN9SemaphoreC1Ej>
    8000383c:	0324b823          	sd	s2,48(s1)
}
    80003840:	02813083          	ld	ra,40(sp)
    80003844:	02013403          	ld	s0,32(sp)
    80003848:	01813483          	ld	s1,24(sp)
    8000384c:	01013903          	ld	s2,16(sp)
    80003850:	00813983          	ld	s3,8(sp)
    80003854:	03010113          	addi	sp,sp,48
    80003858:	00008067          	ret
    8000385c:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80003860:	00098513          	mv	a0,s3
    80003864:	fffff097          	auipc	ra,0xfffff
    80003868:	ca4080e7          	jalr	-860(ra) # 80002508 <_ZdlPv>
    8000386c:	00048513          	mv	a0,s1
    80003870:	00006097          	auipc	ra,0x6
    80003874:	778080e7          	jalr	1912(ra) # 80009fe8 <_Unwind_Resume>
    80003878:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    8000387c:	00098513          	mv	a0,s3
    80003880:	fffff097          	auipc	ra,0xfffff
    80003884:	c88080e7          	jalr	-888(ra) # 80002508 <_ZdlPv>
    80003888:	00048513          	mv	a0,s1
    8000388c:	00006097          	auipc	ra,0x6
    80003890:	75c080e7          	jalr	1884(ra) # 80009fe8 <_Unwind_Resume>
    80003894:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80003898:	00090513          	mv	a0,s2
    8000389c:	fffff097          	auipc	ra,0xfffff
    800038a0:	c6c080e7          	jalr	-916(ra) # 80002508 <_ZdlPv>
    800038a4:	00048513          	mv	a0,s1
    800038a8:	00006097          	auipc	ra,0x6
    800038ac:	740080e7          	jalr	1856(ra) # 80009fe8 <_Unwind_Resume>
    800038b0:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800038b4:	00090513          	mv	a0,s2
    800038b8:	fffff097          	auipc	ra,0xfffff
    800038bc:	c50080e7          	jalr	-944(ra) # 80002508 <_ZdlPv>
    800038c0:	00048513          	mv	a0,s1
    800038c4:	00006097          	auipc	ra,0x6
    800038c8:	724080e7          	jalr	1828(ra) # 80009fe8 <_Unwind_Resume>

00000000800038cc <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    800038cc:	fe010113          	addi	sp,sp,-32
    800038d0:	00113c23          	sd	ra,24(sp)
    800038d4:	00813823          	sd	s0,16(sp)
    800038d8:	00913423          	sd	s1,8(sp)
    800038dc:	01213023          	sd	s2,0(sp)
    800038e0:	02010413          	addi	s0,sp,32
    800038e4:	00050493          	mv	s1,a0
    800038e8:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800038ec:	01853503          	ld	a0,24(a0)
    800038f0:	fffff097          	auipc	ra,0xfffff
    800038f4:	ec8080e7          	jalr	-312(ra) # 800027b8 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800038f8:	0304b503          	ld	a0,48(s1)
    800038fc:	fffff097          	auipc	ra,0xfffff
    80003900:	ebc080e7          	jalr	-324(ra) # 800027b8 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80003904:	0084b783          	ld	a5,8(s1)
    80003908:	0144a703          	lw	a4,20(s1)
    8000390c:	00271713          	slli	a4,a4,0x2
    80003910:	00e787b3          	add	a5,a5,a4
    80003914:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80003918:	0144a783          	lw	a5,20(s1)
    8000391c:	0017879b          	addiw	a5,a5,1
    80003920:	0004a703          	lw	a4,0(s1)
    80003924:	02e7e7bb          	remw	a5,a5,a4
    80003928:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    8000392c:	0304b503          	ld	a0,48(s1)
    80003930:	fffff097          	auipc	ra,0xfffff
    80003934:	ec0080e7          	jalr	-320(ra) # 800027f0 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80003938:	0204b503          	ld	a0,32(s1)
    8000393c:	fffff097          	auipc	ra,0xfffff
    80003940:	eb4080e7          	jalr	-332(ra) # 800027f0 <_ZN9Semaphore6signalEv>

}
    80003944:	01813083          	ld	ra,24(sp)
    80003948:	01013403          	ld	s0,16(sp)
    8000394c:	00813483          	ld	s1,8(sp)
    80003950:	00013903          	ld	s2,0(sp)
    80003954:	02010113          	addi	sp,sp,32
    80003958:	00008067          	ret

000000008000395c <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    8000395c:	fe010113          	addi	sp,sp,-32
    80003960:	00113c23          	sd	ra,24(sp)
    80003964:	00813823          	sd	s0,16(sp)
    80003968:	00913423          	sd	s1,8(sp)
    8000396c:	01213023          	sd	s2,0(sp)
    80003970:	02010413          	addi	s0,sp,32
    80003974:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80003978:	02053503          	ld	a0,32(a0)
    8000397c:	fffff097          	auipc	ra,0xfffff
    80003980:	e3c080e7          	jalr	-452(ra) # 800027b8 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80003984:	0284b503          	ld	a0,40(s1)
    80003988:	fffff097          	auipc	ra,0xfffff
    8000398c:	e30080e7          	jalr	-464(ra) # 800027b8 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80003990:	0084b703          	ld	a4,8(s1)
    80003994:	0104a783          	lw	a5,16(s1)
    80003998:	00279693          	slli	a3,a5,0x2
    8000399c:	00d70733          	add	a4,a4,a3
    800039a0:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800039a4:	0017879b          	addiw	a5,a5,1
    800039a8:	0004a703          	lw	a4,0(s1)
    800039ac:	02e7e7bb          	remw	a5,a5,a4
    800039b0:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800039b4:	0284b503          	ld	a0,40(s1)
    800039b8:	fffff097          	auipc	ra,0xfffff
    800039bc:	e38080e7          	jalr	-456(ra) # 800027f0 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800039c0:	0184b503          	ld	a0,24(s1)
    800039c4:	fffff097          	auipc	ra,0xfffff
    800039c8:	e2c080e7          	jalr	-468(ra) # 800027f0 <_ZN9Semaphore6signalEv>

    return ret;
}
    800039cc:	00090513          	mv	a0,s2
    800039d0:	01813083          	ld	ra,24(sp)
    800039d4:	01013403          	ld	s0,16(sp)
    800039d8:	00813483          	ld	s1,8(sp)
    800039dc:	00013903          	ld	s2,0(sp)
    800039e0:	02010113          	addi	sp,sp,32
    800039e4:	00008067          	ret

00000000800039e8 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800039e8:	fe010113          	addi	sp,sp,-32
    800039ec:	00113c23          	sd	ra,24(sp)
    800039f0:	00813823          	sd	s0,16(sp)
    800039f4:	00913423          	sd	s1,8(sp)
    800039f8:	01213023          	sd	s2,0(sp)
    800039fc:	02010413          	addi	s0,sp,32
    80003a00:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80003a04:	02853503          	ld	a0,40(a0)
    80003a08:	fffff097          	auipc	ra,0xfffff
    80003a0c:	db0080e7          	jalr	-592(ra) # 800027b8 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80003a10:	0304b503          	ld	a0,48(s1)
    80003a14:	fffff097          	auipc	ra,0xfffff
    80003a18:	da4080e7          	jalr	-604(ra) # 800027b8 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80003a1c:	0144a783          	lw	a5,20(s1)
    80003a20:	0104a903          	lw	s2,16(s1)
    80003a24:	0327ce63          	blt	a5,s2,80003a60 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80003a28:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80003a2c:	0304b503          	ld	a0,48(s1)
    80003a30:	fffff097          	auipc	ra,0xfffff
    80003a34:	dc0080e7          	jalr	-576(ra) # 800027f0 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80003a38:	0284b503          	ld	a0,40(s1)
    80003a3c:	fffff097          	auipc	ra,0xfffff
    80003a40:	db4080e7          	jalr	-588(ra) # 800027f0 <_ZN9Semaphore6signalEv>

    return ret;
}
    80003a44:	00090513          	mv	a0,s2
    80003a48:	01813083          	ld	ra,24(sp)
    80003a4c:	01013403          	ld	s0,16(sp)
    80003a50:	00813483          	ld	s1,8(sp)
    80003a54:	00013903          	ld	s2,0(sp)
    80003a58:	02010113          	addi	sp,sp,32
    80003a5c:	00008067          	ret
        ret = cap - head + tail;
    80003a60:	0004a703          	lw	a4,0(s1)
    80003a64:	4127093b          	subw	s2,a4,s2
    80003a68:	00f9093b          	addw	s2,s2,a5
    80003a6c:	fc1ff06f          	j	80003a2c <_ZN9BufferCPP6getCntEv+0x44>

0000000080003a70 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80003a70:	fe010113          	addi	sp,sp,-32
    80003a74:	00113c23          	sd	ra,24(sp)
    80003a78:	00813823          	sd	s0,16(sp)
    80003a7c:	00913423          	sd	s1,8(sp)
    80003a80:	02010413          	addi	s0,sp,32
    80003a84:	00050493          	mv	s1,a0
    Console::putc('\n');
    80003a88:	00a00513          	li	a0,10
    80003a8c:	fffff097          	auipc	ra,0xfffff
    80003a90:	dc4080e7          	jalr	-572(ra) # 80002850 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80003a94:	00003517          	auipc	a0,0x3
    80003a98:	6b450513          	addi	a0,a0,1716 # 80007148 <CONSOLE_STATUS+0x138>
    80003a9c:	00000097          	auipc	ra,0x0
    80003aa0:	a30080e7          	jalr	-1488(ra) # 800034cc <_Z11printStringPKc>
    while (getCnt()) {
    80003aa4:	00048513          	mv	a0,s1
    80003aa8:	00000097          	auipc	ra,0x0
    80003aac:	f40080e7          	jalr	-192(ra) # 800039e8 <_ZN9BufferCPP6getCntEv>
    80003ab0:	02050c63          	beqz	a0,80003ae8 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80003ab4:	0084b783          	ld	a5,8(s1)
    80003ab8:	0104a703          	lw	a4,16(s1)
    80003abc:	00271713          	slli	a4,a4,0x2
    80003ac0:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80003ac4:	0007c503          	lbu	a0,0(a5)
    80003ac8:	fffff097          	auipc	ra,0xfffff
    80003acc:	d88080e7          	jalr	-632(ra) # 80002850 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80003ad0:	0104a783          	lw	a5,16(s1)
    80003ad4:	0017879b          	addiw	a5,a5,1
    80003ad8:	0004a703          	lw	a4,0(s1)
    80003adc:	02e7e7bb          	remw	a5,a5,a4
    80003ae0:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80003ae4:	fc1ff06f          	j	80003aa4 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80003ae8:	02100513          	li	a0,33
    80003aec:	fffff097          	auipc	ra,0xfffff
    80003af0:	d64080e7          	jalr	-668(ra) # 80002850 <_ZN7Console4putcEc>
    Console::putc('\n');
    80003af4:	00a00513          	li	a0,10
    80003af8:	fffff097          	auipc	ra,0xfffff
    80003afc:	d58080e7          	jalr	-680(ra) # 80002850 <_ZN7Console4putcEc>
    mem_free(buffer);
    80003b00:	0084b503          	ld	a0,8(s1)
    80003b04:	ffffd097          	auipc	ra,0xffffd
    80003b08:	788080e7          	jalr	1928(ra) # 8000128c <_Z8mem_freePv>
    delete itemAvailable;
    80003b0c:	0204b503          	ld	a0,32(s1)
    80003b10:	00050863          	beqz	a0,80003b20 <_ZN9BufferCPPD1Ev+0xb0>
    80003b14:	00053783          	ld	a5,0(a0)
    80003b18:	0087b783          	ld	a5,8(a5)
    80003b1c:	000780e7          	jalr	a5
    delete spaceAvailable;
    80003b20:	0184b503          	ld	a0,24(s1)
    80003b24:	00050863          	beqz	a0,80003b34 <_ZN9BufferCPPD1Ev+0xc4>
    80003b28:	00053783          	ld	a5,0(a0)
    80003b2c:	0087b783          	ld	a5,8(a5)
    80003b30:	000780e7          	jalr	a5
    delete mutexTail;
    80003b34:	0304b503          	ld	a0,48(s1)
    80003b38:	00050863          	beqz	a0,80003b48 <_ZN9BufferCPPD1Ev+0xd8>
    80003b3c:	00053783          	ld	a5,0(a0)
    80003b40:	0087b783          	ld	a5,8(a5)
    80003b44:	000780e7          	jalr	a5
    delete mutexHead;
    80003b48:	0284b503          	ld	a0,40(s1)
    80003b4c:	00050863          	beqz	a0,80003b5c <_ZN9BufferCPPD1Ev+0xec>
    80003b50:	00053783          	ld	a5,0(a0)
    80003b54:	0087b783          	ld	a5,8(a5)
    80003b58:	000780e7          	jalr	a5
}
    80003b5c:	01813083          	ld	ra,24(sp)
    80003b60:	01013403          	ld	s0,16(sp)
    80003b64:	00813483          	ld	s1,8(sp)
    80003b68:	02010113          	addi	sp,sp,32
    80003b6c:	00008067          	ret

0000000080003b70 <_Z10printNums1Pv>:
#include "../h/syscall_cpp.hpp"

bool finished1 = false;
bool finished2 = false;

void printNums1(void* arg) {
    80003b70:	fe010113          	addi	sp,sp,-32
    80003b74:	00113c23          	sd	ra,24(sp)
    80003b78:	00813823          	sd	s0,16(sp)
    80003b7c:	00913423          	sd	s1,8(sp)
    80003b80:	01213023          	sd	s2,0(sp)
    80003b84:	02010413          	addi	s0,sp,32
    int n = (uint64)arg;
    80003b88:	0005091b          	sext.w	s2,a0
    for (int i = 1; i <= n; i++) {
    80003b8c:	00100493          	li	s1,1
    80003b90:	0140006f          	j	80003ba4 <_Z10printNums1Pv+0x34>
        printString("1: ");
        printInt(i);
        putc('\n');
        if (i % 10) time_sleep(1);
    80003b94:	00100513          	li	a0,1
    80003b98:	ffffe097          	auipc	ra,0xffffe
    80003b9c:	9a0080e7          	jalr	-1632(ra) # 80001538 <_Z10time_sleepm>
    for (int i = 1; i <= n; i++) {
    80003ba0:	0014849b          	addiw	s1,s1,1
    80003ba4:	04994263          	blt	s2,s1,80003be8 <_Z10printNums1Pv+0x78>
        printString("1: ");
    80003ba8:	00003517          	auipc	a0,0x3
    80003bac:	5b850513          	addi	a0,a0,1464 # 80007160 <CONSOLE_STATUS+0x150>
    80003bb0:	00000097          	auipc	ra,0x0
    80003bb4:	91c080e7          	jalr	-1764(ra) # 800034cc <_Z11printStringPKc>
        printInt(i);
    80003bb8:	00000613          	li	a2,0
    80003bbc:	00a00593          	li	a1,10
    80003bc0:	00048513          	mv	a0,s1
    80003bc4:	00000097          	auipc	ra,0x0
    80003bc8:	aa0080e7          	jalr	-1376(ra) # 80003664 <_Z8printIntiii>
        putc('\n');
    80003bcc:	00a00513          	li	a0,10
    80003bd0:	ffffe097          	auipc	ra,0xffffe
    80003bd4:	9c4080e7          	jalr	-1596(ra) # 80001594 <_Z4putcc>
        if (i % 10) time_sleep(1);
    80003bd8:	00a00793          	li	a5,10
    80003bdc:	02f4e7bb          	remw	a5,s1,a5
    80003be0:	fc0780e3          	beqz	a5,80003ba0 <_Z10printNums1Pv+0x30>
    80003be4:	fb1ff06f          	j	80003b94 <_Z10printNums1Pv+0x24>
    }
    finished1 = true;
    80003be8:	00100793          	li	a5,1
    80003bec:	00005717          	auipc	a4,0x5
    80003bf0:	30f70423          	sb	a5,776(a4) # 80008ef4 <finished1>
}
    80003bf4:	01813083          	ld	ra,24(sp)
    80003bf8:	01013403          	ld	s0,16(sp)
    80003bfc:	00813483          	ld	s1,8(sp)
    80003c00:	00013903          	ld	s2,0(sp)
    80003c04:	02010113          	addi	sp,sp,32
    80003c08:	00008067          	ret

0000000080003c0c <_Z10printNums2Pv>:

void printNums2(void* arg) {
    80003c0c:	fe010113          	addi	sp,sp,-32
    80003c10:	00113c23          	sd	ra,24(sp)
    80003c14:	00813823          	sd	s0,16(sp)
    80003c18:	00913423          	sd	s1,8(sp)
    80003c1c:	01213023          	sd	s2,0(sp)
    80003c20:	02010413          	addi	s0,sp,32
    int n = (uint64)arg;
    80003c24:	0005091b          	sext.w	s2,a0
    for (int i = 1; i <= n; i++) {
    80003c28:	00100493          	li	s1,1
    80003c2c:	0140006f          	j	80003c40 <_Z10printNums2Pv+0x34>
        printString("2: ");
        printInt(i);
        putc('\n');
        if (i % 5) time_sleep(2);
    80003c30:	00200513          	li	a0,2
    80003c34:	ffffe097          	auipc	ra,0xffffe
    80003c38:	904080e7          	jalr	-1788(ra) # 80001538 <_Z10time_sleepm>
    for (int i = 1; i <= n; i++) {
    80003c3c:	0014849b          	addiw	s1,s1,1
    80003c40:	04994263          	blt	s2,s1,80003c84 <_Z10printNums2Pv+0x78>
        printString("2: ");
    80003c44:	00003517          	auipc	a0,0x3
    80003c48:	52450513          	addi	a0,a0,1316 # 80007168 <CONSOLE_STATUS+0x158>
    80003c4c:	00000097          	auipc	ra,0x0
    80003c50:	880080e7          	jalr	-1920(ra) # 800034cc <_Z11printStringPKc>
        printInt(i);
    80003c54:	00000613          	li	a2,0
    80003c58:	00a00593          	li	a1,10
    80003c5c:	00048513          	mv	a0,s1
    80003c60:	00000097          	auipc	ra,0x0
    80003c64:	a04080e7          	jalr	-1532(ra) # 80003664 <_Z8printIntiii>
        putc('\n');
    80003c68:	00a00513          	li	a0,10
    80003c6c:	ffffe097          	auipc	ra,0xffffe
    80003c70:	928080e7          	jalr	-1752(ra) # 80001594 <_Z4putcc>
        if (i % 5) time_sleep(2);
    80003c74:	00500793          	li	a5,5
    80003c78:	02f4e7bb          	remw	a5,s1,a5
    80003c7c:	fc0780e3          	beqz	a5,80003c3c <_Z10printNums2Pv+0x30>
    80003c80:	fb1ff06f          	j	80003c30 <_Z10printNums2Pv+0x24>
    }
    finished2 = true;
    80003c84:	00100793          	li	a5,1
    80003c88:	00005717          	auipc	a4,0x5
    80003c8c:	26f706a3          	sb	a5,621(a4) # 80008ef5 <finished2>
}
    80003c90:	01813083          	ld	ra,24(sp)
    80003c94:	01013403          	ld	s0,16(sp)
    80003c98:	00813483          	ld	s1,8(sp)
    80003c9c:	00013903          	ld	s2,0(sp)
    80003ca0:	02010113          	addi	sp,sp,32
    80003ca4:	00008067          	ret

0000000080003ca8 <_Z9threadSemPv>:

thread_t thandle;
sem_t shandle;
bool finished = false;

void threadSem(void* _) {
    80003ca8:	fe010113          	addi	sp,sp,-32
    80003cac:	00113c23          	sd	ra,24(sp)
    80003cb0:	00813823          	sd	s0,16(sp)
    80003cb4:	00913423          	sd	s1,8(sp)
    80003cb8:	02010413          	addi	s0,sp,32

    int x = sem_wait(shandle);
    80003cbc:	00005497          	auipc	s1,0x5
    80003cc0:	23448493          	addi	s1,s1,564 # 80008ef0 <_ZN19ConsumerProducerCPP9threadEndE>
    80003cc4:	0084b503          	ld	a0,8(s1)
    80003cc8:	ffffe097          	auipc	ra,0xffffe
    80003ccc:	810080e7          	jalr	-2032(ra) # 800014d8 <_Z8sem_waitP4_sem>
    putc(x + '0');
    80003cd0:	0305051b          	addiw	a0,a0,48
    80003cd4:	0ff57513          	andi	a0,a0,255
    80003cd8:	ffffe097          	auipc	ra,0xffffe
    80003cdc:	8bc080e7          	jalr	-1860(ra) # 80001594 <_Z4putcc>

    finished = true;
    80003ce0:	00100793          	li	a5,1
    80003ce4:	00f48823          	sb	a5,16(s1)
}
    80003ce8:	01813083          	ld	ra,24(sp)
    80003cec:	01013403          	ld	s0,16(sp)
    80003cf0:	00813483          	ld	s1,8(sp)
    80003cf4:	02010113          	addi	sp,sp,32
    80003cf8:	00008067          	ret

0000000080003cfc <_ZN19ConsumerProducerCPP20testConsumerProducerEv>:

            td->sem->signal();
        }
    };

    void testConsumerProducer() {
    80003cfc:	f8010113          	addi	sp,sp,-128
    80003d00:	06113c23          	sd	ra,120(sp)
    80003d04:	06813823          	sd	s0,112(sp)
    80003d08:	06913423          	sd	s1,104(sp)
    80003d0c:	07213023          	sd	s2,96(sp)
    80003d10:	05313c23          	sd	s3,88(sp)
    80003d14:	05413823          	sd	s4,80(sp)
    80003d18:	05513423          	sd	s5,72(sp)
    80003d1c:	05613023          	sd	s6,64(sp)
    80003d20:	03713c23          	sd	s7,56(sp)
    80003d24:	03813823          	sd	s8,48(sp)
    80003d28:	03913423          	sd	s9,40(sp)
    80003d2c:	08010413          	addi	s0,sp,128
        delete waitForAll;
        for (int i = 0; i < threadNum; i++) {
            delete producers[i];
        }
        delete consumer;
        delete buffer;
    80003d30:	00010c13          	mv	s8,sp
        printString("Unesite broj proizvodjaca?\n");
    80003d34:	00003517          	auipc	a0,0x3
    80003d38:	43c50513          	addi	a0,a0,1084 # 80007170 <CONSOLE_STATUS+0x160>
    80003d3c:	fffff097          	auipc	ra,0xfffff
    80003d40:	790080e7          	jalr	1936(ra) # 800034cc <_Z11printStringPKc>
        getString(input, 30);
    80003d44:	01e00593          	li	a1,30
    80003d48:	f8040493          	addi	s1,s0,-128
    80003d4c:	00048513          	mv	a0,s1
    80003d50:	fffff097          	auipc	ra,0xfffff
    80003d54:	7f8080e7          	jalr	2040(ra) # 80003548 <_Z9getStringPci>
        threadNum = stringToInt(input);
    80003d58:	00048513          	mv	a0,s1
    80003d5c:	00000097          	auipc	ra,0x0
    80003d60:	8b8080e7          	jalr	-1864(ra) # 80003614 <_Z11stringToIntPKc>
    80003d64:	00050993          	mv	s3,a0
        printString("Unesite velicinu bafera?\n");
    80003d68:	00003517          	auipc	a0,0x3
    80003d6c:	42850513          	addi	a0,a0,1064 # 80007190 <CONSOLE_STATUS+0x180>
    80003d70:	fffff097          	auipc	ra,0xfffff
    80003d74:	75c080e7          	jalr	1884(ra) # 800034cc <_Z11printStringPKc>
        getString(input, 30);
    80003d78:	01e00593          	li	a1,30
    80003d7c:	00048513          	mv	a0,s1
    80003d80:	fffff097          	auipc	ra,0xfffff
    80003d84:	7c8080e7          	jalr	1992(ra) # 80003548 <_Z9getStringPci>
        n = stringToInt(input);
    80003d88:	00048513          	mv	a0,s1
    80003d8c:	00000097          	auipc	ra,0x0
    80003d90:	888080e7          	jalr	-1912(ra) # 80003614 <_Z11stringToIntPKc>
    80003d94:	00050493          	mv	s1,a0
        printString("Broj proizvodjaca "); printInt(threadNum);
    80003d98:	00003517          	auipc	a0,0x3
    80003d9c:	41850513          	addi	a0,a0,1048 # 800071b0 <CONSOLE_STATUS+0x1a0>
    80003da0:	fffff097          	auipc	ra,0xfffff
    80003da4:	72c080e7          	jalr	1836(ra) # 800034cc <_Z11printStringPKc>
    80003da8:	00000613          	li	a2,0
    80003dac:	00a00593          	li	a1,10
    80003db0:	00098513          	mv	a0,s3
    80003db4:	00000097          	auipc	ra,0x0
    80003db8:	8b0080e7          	jalr	-1872(ra) # 80003664 <_Z8printIntiii>
        printString(" i velicina bafera "); printInt(n);
    80003dbc:	00003517          	auipc	a0,0x3
    80003dc0:	40c50513          	addi	a0,a0,1036 # 800071c8 <CONSOLE_STATUS+0x1b8>
    80003dc4:	fffff097          	auipc	ra,0xfffff
    80003dc8:	708080e7          	jalr	1800(ra) # 800034cc <_Z11printStringPKc>
    80003dcc:	00000613          	li	a2,0
    80003dd0:	00a00593          	li	a1,10
    80003dd4:	00048513          	mv	a0,s1
    80003dd8:	00000097          	auipc	ra,0x0
    80003ddc:	88c080e7          	jalr	-1908(ra) # 80003664 <_Z8printIntiii>
        printString(".\n");
    80003de0:	00003517          	auipc	a0,0x3
    80003de4:	40050513          	addi	a0,a0,1024 # 800071e0 <CONSOLE_STATUS+0x1d0>
    80003de8:	fffff097          	auipc	ra,0xfffff
    80003dec:	6e4080e7          	jalr	1764(ra) # 800034cc <_Z11printStringPKc>
        if(threadNum > n) {
    80003df0:	0334c463          	blt	s1,s3,80003e18 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x11c>
        } else if (threadNum < 1) {
    80003df4:	03305c63          	blez	s3,80003e2c <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x130>
        BufferCPP *buffer = new BufferCPP(n);
    80003df8:	03800513          	li	a0,56
    80003dfc:	ffffe097          	auipc	ra,0xffffe
    80003e00:	6e4080e7          	jalr	1764(ra) # 800024e0 <_Znwm>
    80003e04:	00050a93          	mv	s5,a0
    80003e08:	00048593          	mv	a1,s1
    80003e0c:	00000097          	auipc	ra,0x0
    80003e10:	96c080e7          	jalr	-1684(ra) # 80003778 <_ZN9BufferCPPC1Ei>
    80003e14:	0300006f          	j	80003e44 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x148>
            printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003e18:	00003517          	auipc	a0,0x3
    80003e1c:	3d050513          	addi	a0,a0,976 # 800071e8 <CONSOLE_STATUS+0x1d8>
    80003e20:	fffff097          	auipc	ra,0xfffff
    80003e24:	6ac080e7          	jalr	1708(ra) # 800034cc <_Z11printStringPKc>
            return;
    80003e28:	0140006f          	j	80003e3c <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x140>
            printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003e2c:	00003517          	auipc	a0,0x3
    80003e30:	3fc50513          	addi	a0,a0,1020 # 80007228 <CONSOLE_STATUS+0x218>
    80003e34:	fffff097          	auipc	ra,0xfffff
    80003e38:	698080e7          	jalr	1688(ra) # 800034cc <_Z11printStringPKc>
            return;
    80003e3c:	000c0113          	mv	sp,s8
    80003e40:	21c0006f          	j	8000405c <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x360>
        waitForAll = new Semaphore(0);
    80003e44:	01000513          	li	a0,16
    80003e48:	ffffe097          	auipc	ra,0xffffe
    80003e4c:	698080e7          	jalr	1688(ra) # 800024e0 <_Znwm>
    80003e50:	00050493          	mv	s1,a0
    80003e54:	00000593          	li	a1,0
    80003e58:	fffff097          	auipc	ra,0xfffff
    80003e5c:	914080e7          	jalr	-1772(ra) # 8000276c <_ZN9SemaphoreC1Ej>
    80003e60:	00005717          	auipc	a4,0x5
    80003e64:	09070713          	addi	a4,a4,144 # 80008ef0 <_ZN19ConsumerProducerCPP9threadEndE>
    80003e68:	00973c23          	sd	s1,24(a4)
        Thread *producers[threadNum];
    80003e6c:	00399793          	slli	a5,s3,0x3
    80003e70:	00f78793          	addi	a5,a5,15
    80003e74:	ff07f793          	andi	a5,a5,-16
    80003e78:	40f10133          	sub	sp,sp,a5
    80003e7c:	00010a13          	mv	s4,sp
        thread_data threadData[threadNum + 1];
    80003e80:	0019869b          	addiw	a3,s3,1
    80003e84:	00169793          	slli	a5,a3,0x1
    80003e88:	00d787b3          	add	a5,a5,a3
    80003e8c:	00379793          	slli	a5,a5,0x3
    80003e90:	00f78793          	addi	a5,a5,15
    80003e94:	ff07f793          	andi	a5,a5,-16
    80003e98:	40f10133          	sub	sp,sp,a5
    80003e9c:	00010b13          	mv	s6,sp
        threadData[threadNum].id = threadNum;
    80003ea0:	00199493          	slli	s1,s3,0x1
    80003ea4:	013484b3          	add	s1,s1,s3
    80003ea8:	00349493          	slli	s1,s1,0x3
    80003eac:	009b04b3          	add	s1,s6,s1
    80003eb0:	0134a023          	sw	s3,0(s1)
        threadData[threadNum].buffer = buffer;
    80003eb4:	0154b423          	sd	s5,8(s1)
        threadData[threadNum].sem = waitForAll;
    80003eb8:	01873783          	ld	a5,24(a4)
    80003ebc:	00f4b823          	sd	a5,16(s1)
        Thread *consumer = new Consumer(&threadData[threadNum]);
    80003ec0:	01800513          	li	a0,24
    80003ec4:	ffffe097          	auipc	ra,0xffffe
    80003ec8:	61c080e7          	jalr	1564(ra) # 800024e0 <_Znwm>
    80003ecc:	00050b93          	mv	s7,a0
        Consumer(thread_data *_td) : Thread(), td(_td) {}
    80003ed0:	ffffe097          	auipc	ra,0xffffe
    80003ed4:	7e4080e7          	jalr	2020(ra) # 800026b4 <_ZN6ThreadC1Ev>
    80003ed8:	00005797          	auipc	a5,0x5
    80003edc:	ed078793          	addi	a5,a5,-304 # 80008da8 <_ZTVN19ConsumerProducerCPP8ConsumerE+0x10>
    80003ee0:	00fbb023          	sd	a5,0(s7)
    80003ee4:	009bb823          	sd	s1,16(s7)
        consumer->start();
    80003ee8:	000b8513          	mv	a0,s7
    80003eec:	ffffe097          	auipc	ra,0xffffe
    80003ef0:	700080e7          	jalr	1792(ra) # 800025ec <_ZN6Thread5startEv>
        threadData[0].id = 0;
    80003ef4:	000b2023          	sw	zero,0(s6)
        threadData[0].buffer = buffer;
    80003ef8:	015b3423          	sd	s5,8(s6)
        threadData[0].sem = waitForAll;
    80003efc:	00005797          	auipc	a5,0x5
    80003f00:	00c7b783          	ld	a5,12(a5) # 80008f08 <_ZN19ConsumerProducerCPP10waitForAllE>
    80003f04:	00fb3823          	sd	a5,16(s6)
        producers[0] = new ProducerKeyborad(&threadData[0]);
    80003f08:	01800513          	li	a0,24
    80003f0c:	ffffe097          	auipc	ra,0xffffe
    80003f10:	5d4080e7          	jalr	1492(ra) # 800024e0 <_Znwm>
    80003f14:	00050493          	mv	s1,a0
        ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80003f18:	ffffe097          	auipc	ra,0xffffe
    80003f1c:	79c080e7          	jalr	1948(ra) # 800026b4 <_ZN6ThreadC1Ev>
    80003f20:	00005797          	auipc	a5,0x5
    80003f24:	e3878793          	addi	a5,a5,-456 # 80008d58 <_ZTVN19ConsumerProducerCPP16ProducerKeyboradE+0x10>
    80003f28:	00f4b023          	sd	a5,0(s1)
    80003f2c:	0164b823          	sd	s6,16(s1)
        producers[0] = new ProducerKeyborad(&threadData[0]);
    80003f30:	009a3023          	sd	s1,0(s4)
        producers[0]->start();
    80003f34:	00048513          	mv	a0,s1
    80003f38:	ffffe097          	auipc	ra,0xffffe
    80003f3c:	6b4080e7          	jalr	1716(ra) # 800025ec <_ZN6Thread5startEv>
        for (int i = 1; i < threadNum; i++) {
    80003f40:	00100913          	li	s2,1
    80003f44:	0300006f          	j	80003f74 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x278>
        Producer(thread_data *_td) : Thread(), td(_td) {}
    80003f48:	00005797          	auipc	a5,0x5
    80003f4c:	e3878793          	addi	a5,a5,-456 # 80008d80 <_ZTVN19ConsumerProducerCPP8ProducerE+0x10>
    80003f50:	00fcb023          	sd	a5,0(s9)
    80003f54:	009cb823          	sd	s1,16(s9)
            producers[i] = new Producer(&threadData[i]);
    80003f58:	00391793          	slli	a5,s2,0x3
    80003f5c:	00fa07b3          	add	a5,s4,a5
    80003f60:	0197b023          	sd	s9,0(a5)
            producers[i]->start();
    80003f64:	000c8513          	mv	a0,s9
    80003f68:	ffffe097          	auipc	ra,0xffffe
    80003f6c:	684080e7          	jalr	1668(ra) # 800025ec <_ZN6Thread5startEv>
        for (int i = 1; i < threadNum; i++) {
    80003f70:	0019091b          	addiw	s2,s2,1
    80003f74:	05395263          	bge	s2,s3,80003fb8 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2bc>
            threadData[i].id = i;
    80003f78:	00191493          	slli	s1,s2,0x1
    80003f7c:	012484b3          	add	s1,s1,s2
    80003f80:	00349493          	slli	s1,s1,0x3
    80003f84:	009b04b3          	add	s1,s6,s1
    80003f88:	0124a023          	sw	s2,0(s1)
            threadData[i].buffer = buffer;
    80003f8c:	0154b423          	sd	s5,8(s1)
            threadData[i].sem = waitForAll;
    80003f90:	00005797          	auipc	a5,0x5
    80003f94:	f787b783          	ld	a5,-136(a5) # 80008f08 <_ZN19ConsumerProducerCPP10waitForAllE>
    80003f98:	00f4b823          	sd	a5,16(s1)
            producers[i] = new Producer(&threadData[i]);
    80003f9c:	01800513          	li	a0,24
    80003fa0:	ffffe097          	auipc	ra,0xffffe
    80003fa4:	540080e7          	jalr	1344(ra) # 800024e0 <_Znwm>
    80003fa8:	00050c93          	mv	s9,a0
        Producer(thread_data *_td) : Thread(), td(_td) {}
    80003fac:	ffffe097          	auipc	ra,0xffffe
    80003fb0:	708080e7          	jalr	1800(ra) # 800026b4 <_ZN6ThreadC1Ev>
    80003fb4:	f95ff06f          	j	80003f48 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x24c>
        Thread::dispatch();
    80003fb8:	ffffe097          	auipc	ra,0xffffe
    80003fbc:	66c080e7          	jalr	1644(ra) # 80002624 <_ZN6Thread8dispatchEv>
        for (int i = 0; i <= threadNum; i++) {
    80003fc0:	00000493          	li	s1,0
    80003fc4:	0099ce63          	blt	s3,s1,80003fe0 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2e4>
            waitForAll->wait();
    80003fc8:	00005517          	auipc	a0,0x5
    80003fcc:	f4053503          	ld	a0,-192(a0) # 80008f08 <_ZN19ConsumerProducerCPP10waitForAllE>
    80003fd0:	ffffe097          	auipc	ra,0xffffe
    80003fd4:	7e8080e7          	jalr	2024(ra) # 800027b8 <_ZN9Semaphore4waitEv>
        for (int i = 0; i <= threadNum; i++) {
    80003fd8:	0014849b          	addiw	s1,s1,1
    80003fdc:	fe9ff06f          	j	80003fc4 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2c8>
        delete waitForAll;
    80003fe0:	00005517          	auipc	a0,0x5
    80003fe4:	f2853503          	ld	a0,-216(a0) # 80008f08 <_ZN19ConsumerProducerCPP10waitForAllE>
    80003fe8:	00050863          	beqz	a0,80003ff8 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2fc>
    80003fec:	00053783          	ld	a5,0(a0)
    80003ff0:	0087b783          	ld	a5,8(a5)
    80003ff4:	000780e7          	jalr	a5
        for (int i = 0; i <= threadNum; i++) {
    80003ff8:	00000493          	li	s1,0
    80003ffc:	0080006f          	j	80004004 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x308>
        for (int i = 0; i < threadNum; i++) {
    80004000:	0014849b          	addiw	s1,s1,1
    80004004:	0334d263          	bge	s1,s3,80004028 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x32c>
            delete producers[i];
    80004008:	00349793          	slli	a5,s1,0x3
    8000400c:	00fa07b3          	add	a5,s4,a5
    80004010:	0007b503          	ld	a0,0(a5)
    80004014:	fe0506e3          	beqz	a0,80004000 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x304>
    80004018:	00053783          	ld	a5,0(a0)
    8000401c:	0087b783          	ld	a5,8(a5)
    80004020:	000780e7          	jalr	a5
    80004024:	fddff06f          	j	80004000 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x304>
        delete consumer;
    80004028:	000b8a63          	beqz	s7,8000403c <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x340>
    8000402c:	000bb783          	ld	a5,0(s7)
    80004030:	0087b783          	ld	a5,8(a5)
    80004034:	000b8513          	mv	a0,s7
    80004038:	000780e7          	jalr	a5
        delete buffer;
    8000403c:	000a8e63          	beqz	s5,80004058 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x35c>
    80004040:	000a8513          	mv	a0,s5
    80004044:	00000097          	auipc	ra,0x0
    80004048:	a2c080e7          	jalr	-1492(ra) # 80003a70 <_ZN9BufferCPPD1Ev>
    8000404c:	000a8513          	mv	a0,s5
    80004050:	ffffe097          	auipc	ra,0xffffe
    80004054:	4b8080e7          	jalr	1208(ra) # 80002508 <_ZdlPv>
    80004058:	000c0113          	mv	sp,s8
    }
    8000405c:	f8040113          	addi	sp,s0,-128
    80004060:	07813083          	ld	ra,120(sp)
    80004064:	07013403          	ld	s0,112(sp)
    80004068:	06813483          	ld	s1,104(sp)
    8000406c:	06013903          	ld	s2,96(sp)
    80004070:	05813983          	ld	s3,88(sp)
    80004074:	05013a03          	ld	s4,80(sp)
    80004078:	04813a83          	ld	s5,72(sp)
    8000407c:	04013b03          	ld	s6,64(sp)
    80004080:	03813b83          	ld	s7,56(sp)
    80004084:	03013c03          	ld	s8,48(sp)
    80004088:	02813c83          	ld	s9,40(sp)
    8000408c:	08010113          	addi	sp,sp,128
    80004090:	00008067          	ret
    80004094:	00050493          	mv	s1,a0
        BufferCPP *buffer = new BufferCPP(n);
    80004098:	000a8513          	mv	a0,s5
    8000409c:	ffffe097          	auipc	ra,0xffffe
    800040a0:	46c080e7          	jalr	1132(ra) # 80002508 <_ZdlPv>
    800040a4:	00048513          	mv	a0,s1
    800040a8:	00006097          	auipc	ra,0x6
    800040ac:	f40080e7          	jalr	-192(ra) # 80009fe8 <_Unwind_Resume>
    800040b0:	00050913          	mv	s2,a0
        waitForAll = new Semaphore(0);
    800040b4:	00048513          	mv	a0,s1
    800040b8:	ffffe097          	auipc	ra,0xffffe
    800040bc:	450080e7          	jalr	1104(ra) # 80002508 <_ZdlPv>
    800040c0:	00090513          	mv	a0,s2
    800040c4:	00006097          	auipc	ra,0x6
    800040c8:	f24080e7          	jalr	-220(ra) # 80009fe8 <_Unwind_Resume>
    800040cc:	00050493          	mv	s1,a0
        Thread *consumer = new Consumer(&threadData[threadNum]);
    800040d0:	000b8513          	mv	a0,s7
    800040d4:	ffffe097          	auipc	ra,0xffffe
    800040d8:	434080e7          	jalr	1076(ra) # 80002508 <_ZdlPv>
    800040dc:	00048513          	mv	a0,s1
    800040e0:	00006097          	auipc	ra,0x6
    800040e4:	f08080e7          	jalr	-248(ra) # 80009fe8 <_Unwind_Resume>
    800040e8:	00050913          	mv	s2,a0
        producers[0] = new ProducerKeyborad(&threadData[0]);
    800040ec:	00048513          	mv	a0,s1
    800040f0:	ffffe097          	auipc	ra,0xffffe
    800040f4:	418080e7          	jalr	1048(ra) # 80002508 <_ZdlPv>
    800040f8:	00090513          	mv	a0,s2
    800040fc:	00006097          	auipc	ra,0x6
    80004100:	eec080e7          	jalr	-276(ra) # 80009fe8 <_Unwind_Resume>
    80004104:	00050493          	mv	s1,a0
            producers[i] = new Producer(&threadData[i]);
    80004108:	000c8513          	mv	a0,s9
    8000410c:	ffffe097          	auipc	ra,0xffffe
    80004110:	3fc080e7          	jalr	1020(ra) # 80002508 <_ZdlPv>
    80004114:	00048513          	mv	a0,s1
    80004118:	00006097          	auipc	ra,0x6
    8000411c:	ed0080e7          	jalr	-304(ra) # 80009fe8 <_Unwind_Resume>

0000000080004120 <_Z7mojTestv>:
void mojTest() {
    80004120:	fd010113          	addi	sp,sp,-48
    80004124:	02113423          	sd	ra,40(sp)
    80004128:	02813023          	sd	s0,32(sp)
    8000412c:	00913c23          	sd	s1,24(sp)
    80004130:	01213823          	sd	s2,16(sp)
    80004134:	03010413          	addi	s0,sp,48
    char *a = new char;
    80004138:	00100513          	li	a0,1
    8000413c:	ffffe097          	auipc	ra,0xffffe
    80004140:	3a4080e7          	jalr	932(ra) # 800024e0 <_Znwm>
    *a = 'a';
    80004144:	06100793          	li	a5,97
    80004148:	00f50023          	sb	a5,0(a0)
    putc(*a);
    8000414c:	06100513          	li	a0,97
    80004150:	ffffd097          	auipc	ra,0xffffd
    80004154:	444080e7          	jalr	1092(ra) # 80001594 <_Z4putcc>
    putc('\n');
    80004158:	00a00513          	li	a0,10
    8000415c:	ffffd097          	auipc	ra,0xffffd
    80004160:	438080e7          	jalr	1080(ra) # 80001594 <_Z4putcc>
    int r1 = thread_create(&handle1, printNums1, (void*)20);
    80004164:	01400613          	li	a2,20
    80004168:	00000597          	auipc	a1,0x0
    8000416c:	a0858593          	addi	a1,a1,-1528 # 80003b70 <_Z10printNums1Pv>
    80004170:	fd840513          	addi	a0,s0,-40
    80004174:	ffffd097          	auipc	ra,0xffffd
    80004178:	148080e7          	jalr	328(ra) # 800012bc <_Z13thread_createPP7_threadPFvPvES2_>
    8000417c:	00050913          	mv	s2,a0
    int r2 = thread_create(&handle2, printNums2, (void*)20);
    80004180:	01400613          	li	a2,20
    80004184:	00000597          	auipc	a1,0x0
    80004188:	a8858593          	addi	a1,a1,-1400 # 80003c0c <_Z10printNums2Pv>
    8000418c:	fd040513          	addi	a0,s0,-48
    80004190:	ffffd097          	auipc	ra,0xffffd
    80004194:	12c080e7          	jalr	300(ra) # 800012bc <_Z13thread_createPP7_threadPFvPvES2_>
    80004198:	00050493          	mv	s1,a0
    8000419c:	00c0006f          	j	800041a8 <_Z7mojTestv+0x88>
        thread_dispatch();
    800041a0:	ffffd097          	auipc	ra,0xffffd
    800041a4:	1c8080e7          	jalr	456(ra) # 80001368 <_Z15thread_dispatchv>
    while (!(finished1 && finished2)) {
    800041a8:	00005797          	auipc	a5,0x5
    800041ac:	d4c7c783          	lbu	a5,-692(a5) # 80008ef4 <finished1>
    800041b0:	fe0788e3          	beqz	a5,800041a0 <_Z7mojTestv+0x80>
    800041b4:	00005797          	auipc	a5,0x5
    800041b8:	d417c783          	lbu	a5,-703(a5) # 80008ef5 <finished2>
    800041bc:	fe0782e3          	beqz	a5,800041a0 <_Z7mojTestv+0x80>
    putc(r1 + '0');
    800041c0:	0309051b          	addiw	a0,s2,48
    800041c4:	0ff57513          	andi	a0,a0,255
    800041c8:	ffffd097          	auipc	ra,0xffffd
    800041cc:	3cc080e7          	jalr	972(ra) # 80001594 <_Z4putcc>
    putc(r2 + '0');
    800041d0:	0304851b          	addiw	a0,s1,48
    800041d4:	0ff57513          	andi	a0,a0,255
    800041d8:	ffffd097          	auipc	ra,0xffffd
    800041dc:	3bc080e7          	jalr	956(ra) # 80001594 <_Z4putcc>
    putc('h');
    800041e0:	06800513          	li	a0,104
    800041e4:	ffffd097          	auipc	ra,0xffffd
    800041e8:	3b0080e7          	jalr	944(ra) # 80001594 <_Z4putcc>
    putc('\n');
    800041ec:	00a00513          	li	a0,10
    800041f0:	ffffd097          	auipc	ra,0xffffd
    800041f4:	3a4080e7          	jalr	932(ra) # 80001594 <_Z4putcc>
}
    800041f8:	02813083          	ld	ra,40(sp)
    800041fc:	02013403          	ld	s0,32(sp)
    80004200:	01813483          	ld	s1,24(sp)
    80004204:	01013903          	ld	s2,16(sp)
    80004208:	03010113          	addi	sp,sp,48
    8000420c:	00008067          	ret

0000000080004210 <_Z7memTestv>:
void memTest() {
    80004210:	ff010113          	addi	sp,sp,-16
    80004214:	00113423          	sd	ra,8(sp)
    80004218:	00813023          	sd	s0,0(sp)
    8000421c:	01010413          	addi	s0,sp,16
    putc(sizeof(uint8) + '0');
    80004220:	03100513          	li	a0,49
    80004224:	ffffd097          	auipc	ra,0xffffd
    80004228:	370080e7          	jalr	880(ra) # 80001594 <_Z4putcc>
    putc(sizeof(uint16) + '0');
    8000422c:	03200513          	li	a0,50
    80004230:	ffffd097          	auipc	ra,0xffffd
    80004234:	364080e7          	jalr	868(ra) # 80001594 <_Z4putcc>
    putc(sizeof(uint32) + '0');
    80004238:	03400513          	li	a0,52
    8000423c:	ffffd097          	auipc	ra,0xffffd
    80004240:	358080e7          	jalr	856(ra) # 80001594 <_Z4putcc>
    putc(sizeof(uint64) + '0');
    80004244:	03800513          	li	a0,56
    80004248:	ffffd097          	auipc	ra,0xffffd
    8000424c:	34c080e7          	jalr	844(ra) # 80001594 <_Z4putcc>
    int* a = new int;
    80004250:	00400513          	li	a0,4
    80004254:	ffffe097          	auipc	ra,0xffffe
    80004258:	28c080e7          	jalr	652(ra) # 800024e0 <_Znwm>
    *a = 3;
    8000425c:	00300793          	li	a5,3
    80004260:	00f52023          	sw	a5,0(a0)
    putc(*a + '0');
    80004264:	03300513          	li	a0,51
    80004268:	ffffd097          	auipc	ra,0xffffd
    8000426c:	32c080e7          	jalr	812(ra) # 80001594 <_Z4putcc>
    putc('\n');
    80004270:	00a00513          	li	a0,10
    80004274:	ffffd097          	auipc	ra,0xffffd
    80004278:	320080e7          	jalr	800(ra) # 80001594 <_Z4putcc>
}
    8000427c:	00813083          	ld	ra,8(sp)
    80004280:	00013403          	ld	s0,0(sp)
    80004284:	01010113          	addi	sp,sp,16
    80004288:	00008067          	ret

000000008000428c <_Z7semTestv>:

void semTest() {
    8000428c:	ff010113          	addi	sp,sp,-16
    80004290:	00113423          	sd	ra,8(sp)
    80004294:	00813023          	sd	s0,0(sp)
    80004298:	01010413          	addi	s0,sp,16

    int x = sem_open(&shandle, 0);
    8000429c:	00000593          	li	a1,0
    800042a0:	00005517          	auipc	a0,0x5
    800042a4:	c5850513          	addi	a0,a0,-936 # 80008ef8 <shandle>
    800042a8:	ffffd097          	auipc	ra,0xffffd
    800042ac:	1c4080e7          	jalr	452(ra) # 8000146c <_Z8sem_openPP4_semj>
    putc(x + '0');
    800042b0:	0305051b          	addiw	a0,a0,48
    800042b4:	0ff57513          	andi	a0,a0,255
    800042b8:	ffffd097          	auipc	ra,0xffffd
    800042bc:	2dc080e7          	jalr	732(ra) # 80001594 <_Z4putcc>

    int r1 = thread_create(&thandle, threadSem, nullptr);
    800042c0:	00000613          	li	a2,0
    800042c4:	00000597          	auipc	a1,0x0
    800042c8:	9e458593          	addi	a1,a1,-1564 # 80003ca8 <_Z9threadSemPv>
    800042cc:	00005517          	auipc	a0,0x5
    800042d0:	c4450513          	addi	a0,a0,-956 # 80008f10 <thandle>
    800042d4:	ffffd097          	auipc	ra,0xffffd
    800042d8:	fe8080e7          	jalr	-24(ra) # 800012bc <_Z13thread_createPP7_threadPFvPvES2_>
    putc(r1 + '0');
    800042dc:	0305051b          	addiw	a0,a0,48
    800042e0:	0ff57513          	andi	a0,a0,255
    800042e4:	ffffd097          	auipc	ra,0xffffd
    800042e8:	2b0080e7          	jalr	688(ra) # 80001594 <_Z4putcc>
    putc('\n');
    800042ec:	00a00513          	li	a0,10
    800042f0:	ffffd097          	auipc	ra,0xffffd
    800042f4:	2a4080e7          	jalr	676(ra) # 80001594 <_Z4putcc>

    time_sleep(1);
    800042f8:	00100513          	li	a0,1
    800042fc:	ffffd097          	auipc	ra,0xffffd
    80004300:	23c080e7          	jalr	572(ra) # 80001538 <_Z10time_sleepm>
    sem_close(shandle);
    80004304:	00005517          	auipc	a0,0x5
    80004308:	bf453503          	ld	a0,-1036(a0) # 80008ef8 <shandle>
    8000430c:	ffffd097          	auipc	ra,0xffffd
    80004310:	19c080e7          	jalr	412(ra) # 800014a8 <_Z9sem_closeP4_sem>

//    sem_signal(shandle);

    while (!finished);
    80004314:	00005797          	auipc	a5,0x5
    80004318:	bec7c783          	lbu	a5,-1044(a5) # 80008f00 <finished>
    8000431c:	fe078ce3          	beqz	a5,80004314 <_Z7semTestv+0x88>


    putc('\n');
    80004320:	00a00513          	li	a0,10
    80004324:	ffffd097          	auipc	ra,0xffffd
    80004328:	270080e7          	jalr	624(ra) # 80001594 <_Z4putcc>

}
    8000432c:	00813083          	ld	ra,8(sp)
    80004330:	00013403          	ld	s0,0(sp)
    80004334:	01010113          	addi	sp,sp,16
    80004338:	00008067          	ret

000000008000433c <_Z11consoleTestv>:

void consoleTest() {
    8000433c:	fe010113          	addi	sp,sp,-32
    80004340:	00113c23          	sd	ra,24(sp)
    80004344:	00813823          	sd	s0,16(sp)
    80004348:	00913423          	sd	s1,8(sp)
    8000434c:	02010413          	addi	s0,sp,32

    int a = getc() - '0'; getc();
    80004350:	ffffd097          	auipc	ra,0xffffd
    80004354:	218080e7          	jalr	536(ra) # 80001568 <_Z4getcv>
    80004358:	fd05049b          	addiw	s1,a0,-48
    8000435c:	ffffd097          	auipc	ra,0xffffd
    80004360:	20c080e7          	jalr	524(ra) # 80001568 <_Z4getcv>
    int b = getc() - '0';
    80004364:	ffffd097          	auipc	ra,0xffffd
    80004368:	204080e7          	jalr	516(ra) # 80001568 <_Z4getcv>
    8000436c:	fd05051b          	addiw	a0,a0,-48

    int c = a + b;
    80004370:	00a4853b          	addw	a0,s1,a0

    putc(c + '0');
    80004374:	0305051b          	addiw	a0,a0,48
    80004378:	0ff57513          	andi	a0,a0,255
    8000437c:	ffffd097          	auipc	ra,0xffffd
    80004380:	218080e7          	jalr	536(ra) # 80001594 <_Z4putcc>

}
    80004384:	01813083          	ld	ra,24(sp)
    80004388:	01013403          	ld	s0,16(sp)
    8000438c:	00813483          	ld	s1,8(sp)
    80004390:	02010113          	addi	sp,sp,32
    80004394:	00008067          	ret

0000000080004398 <_Z8userMainv>:

void userMain() {
    80004398:	ff010113          	addi	sp,sp,-16
    8000439c:	00113423          	sd	ra,8(sp)
    800043a0:	00813023          	sd	s0,0(sp)
    800043a4:	01010413          	addi	s0,sp,16
//
//    producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
//    producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta
//
//    testSleeping(); // thread_sleep test C API
    ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega
    800043a8:	00000097          	auipc	ra,0x0
    800043ac:	954080e7          	jalr	-1708(ra) # 80003cfc <_ZN19ConsumerProducerCPP20testConsumerProducerEv>

//    mojTest();
//    memTest();
//    semTest();
//    consoleTest();
}
    800043b0:	00813083          	ld	ra,8(sp)
    800043b4:	00013403          	ld	s0,0(sp)
    800043b8:	01010113          	addi	sp,sp,16
    800043bc:	00008067          	ret

00000000800043c0 <_ZN19ConsumerProducerCPP8Consumer3runEv>:
        void run() override {
    800043c0:	fd010113          	addi	sp,sp,-48
    800043c4:	02113423          	sd	ra,40(sp)
    800043c8:	02813023          	sd	s0,32(sp)
    800043cc:	00913c23          	sd	s1,24(sp)
    800043d0:	01213823          	sd	s2,16(sp)
    800043d4:	01313423          	sd	s3,8(sp)
    800043d8:	03010413          	addi	s0,sp,48
    800043dc:	00050913          	mv	s2,a0
            int i = 0;
    800043e0:	00000993          	li	s3,0
    800043e4:	0100006f          	j	800043f4 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x34>
                    Console::putc('\n');
    800043e8:	00a00513          	li	a0,10
    800043ec:	ffffe097          	auipc	ra,0xffffe
    800043f0:	464080e7          	jalr	1124(ra) # 80002850 <_ZN7Console4putcEc>
            while (!threadEnd) {
    800043f4:	00005797          	auipc	a5,0x5
    800043f8:	afc7a783          	lw	a5,-1284(a5) # 80008ef0 <_ZN19ConsumerProducerCPP9threadEndE>
    800043fc:	04079a63          	bnez	a5,80004450 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x90>
                int key = td->buffer->get();
    80004400:	01093783          	ld	a5,16(s2)
    80004404:	0087b503          	ld	a0,8(a5)
    80004408:	fffff097          	auipc	ra,0xfffff
    8000440c:	554080e7          	jalr	1364(ra) # 8000395c <_ZN9BufferCPP3getEv>
                i++;
    80004410:	0019849b          	addiw	s1,s3,1
    80004414:	0004899b          	sext.w	s3,s1
                Console::putc(key);
    80004418:	0ff57513          	andi	a0,a0,255
    8000441c:	ffffe097          	auipc	ra,0xffffe
    80004420:	434080e7          	jalr	1076(ra) # 80002850 <_ZN7Console4putcEc>
                if (i % 80 == 0) {
    80004424:	05000793          	li	a5,80
    80004428:	02f4e4bb          	remw	s1,s1,a5
    8000442c:	fc0494e3          	bnez	s1,800043f4 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x34>
    80004430:	fb9ff06f          	j	800043e8 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x28>
                int key = td->buffer->get();
    80004434:	01093783          	ld	a5,16(s2)
    80004438:	0087b503          	ld	a0,8(a5)
    8000443c:	fffff097          	auipc	ra,0xfffff
    80004440:	520080e7          	jalr	1312(ra) # 8000395c <_ZN9BufferCPP3getEv>
                Console::putc(key);
    80004444:	0ff57513          	andi	a0,a0,255
    80004448:	ffffe097          	auipc	ra,0xffffe
    8000444c:	408080e7          	jalr	1032(ra) # 80002850 <_ZN7Console4putcEc>
            while (td->buffer->getCnt() > 0) {
    80004450:	01093783          	ld	a5,16(s2)
    80004454:	0087b503          	ld	a0,8(a5)
    80004458:	fffff097          	auipc	ra,0xfffff
    8000445c:	590080e7          	jalr	1424(ra) # 800039e8 <_ZN9BufferCPP6getCntEv>
    80004460:	fca04ae3          	bgtz	a0,80004434 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x74>
            td->sem->signal();
    80004464:	01093783          	ld	a5,16(s2)
    80004468:	0107b503          	ld	a0,16(a5)
    8000446c:	ffffe097          	auipc	ra,0xffffe
    80004470:	384080e7          	jalr	900(ra) # 800027f0 <_ZN9Semaphore6signalEv>
        }
    80004474:	02813083          	ld	ra,40(sp)
    80004478:	02013403          	ld	s0,32(sp)
    8000447c:	01813483          	ld	s1,24(sp)
    80004480:	01013903          	ld	s2,16(sp)
    80004484:	00813983          	ld	s3,8(sp)
    80004488:	03010113          	addi	sp,sp,48
    8000448c:	00008067          	ret

0000000080004490 <_ZN19ConsumerProducerCPP8ConsumerD1Ev>:
    class Consumer : public Thread {
    80004490:	ff010113          	addi	sp,sp,-16
    80004494:	00113423          	sd	ra,8(sp)
    80004498:	00813023          	sd	s0,0(sp)
    8000449c:	01010413          	addi	s0,sp,16
    800044a0:	00005797          	auipc	a5,0x5
    800044a4:	90878793          	addi	a5,a5,-1784 # 80008da8 <_ZTVN19ConsumerProducerCPP8ConsumerE+0x10>
    800044a8:	00f53023          	sd	a5,0(a0)
    800044ac:	ffffe097          	auipc	ra,0xffffe
    800044b0:	fc4080e7          	jalr	-60(ra) # 80002470 <_ZN6ThreadD1Ev>
    800044b4:	00813083          	ld	ra,8(sp)
    800044b8:	00013403          	ld	s0,0(sp)
    800044bc:	01010113          	addi	sp,sp,16
    800044c0:	00008067          	ret

00000000800044c4 <_ZN19ConsumerProducerCPP8ConsumerD0Ev>:
    800044c4:	fe010113          	addi	sp,sp,-32
    800044c8:	00113c23          	sd	ra,24(sp)
    800044cc:	00813823          	sd	s0,16(sp)
    800044d0:	00913423          	sd	s1,8(sp)
    800044d4:	02010413          	addi	s0,sp,32
    800044d8:	00050493          	mv	s1,a0
    800044dc:	00005797          	auipc	a5,0x5
    800044e0:	8cc78793          	addi	a5,a5,-1844 # 80008da8 <_ZTVN19ConsumerProducerCPP8ConsumerE+0x10>
    800044e4:	00f53023          	sd	a5,0(a0)
    800044e8:	ffffe097          	auipc	ra,0xffffe
    800044ec:	f88080e7          	jalr	-120(ra) # 80002470 <_ZN6ThreadD1Ev>
    800044f0:	00048513          	mv	a0,s1
    800044f4:	ffffe097          	auipc	ra,0xffffe
    800044f8:	014080e7          	jalr	20(ra) # 80002508 <_ZdlPv>
    800044fc:	01813083          	ld	ra,24(sp)
    80004500:	01013403          	ld	s0,16(sp)
    80004504:	00813483          	ld	s1,8(sp)
    80004508:	02010113          	addi	sp,sp,32
    8000450c:	00008067          	ret

0000000080004510 <_ZN19ConsumerProducerCPP16ProducerKeyboradD1Ev>:
    class ProducerKeyborad : public Thread {
    80004510:	ff010113          	addi	sp,sp,-16
    80004514:	00113423          	sd	ra,8(sp)
    80004518:	00813023          	sd	s0,0(sp)
    8000451c:	01010413          	addi	s0,sp,16
    80004520:	00005797          	auipc	a5,0x5
    80004524:	83878793          	addi	a5,a5,-1992 # 80008d58 <_ZTVN19ConsumerProducerCPP16ProducerKeyboradE+0x10>
    80004528:	00f53023          	sd	a5,0(a0)
    8000452c:	ffffe097          	auipc	ra,0xffffe
    80004530:	f44080e7          	jalr	-188(ra) # 80002470 <_ZN6ThreadD1Ev>
    80004534:	00813083          	ld	ra,8(sp)
    80004538:	00013403          	ld	s0,0(sp)
    8000453c:	01010113          	addi	sp,sp,16
    80004540:	00008067          	ret

0000000080004544 <_ZN19ConsumerProducerCPP16ProducerKeyboradD0Ev>:
    80004544:	fe010113          	addi	sp,sp,-32
    80004548:	00113c23          	sd	ra,24(sp)
    8000454c:	00813823          	sd	s0,16(sp)
    80004550:	00913423          	sd	s1,8(sp)
    80004554:	02010413          	addi	s0,sp,32
    80004558:	00050493          	mv	s1,a0
    8000455c:	00004797          	auipc	a5,0x4
    80004560:	7fc78793          	addi	a5,a5,2044 # 80008d58 <_ZTVN19ConsumerProducerCPP16ProducerKeyboradE+0x10>
    80004564:	00f53023          	sd	a5,0(a0)
    80004568:	ffffe097          	auipc	ra,0xffffe
    8000456c:	f08080e7          	jalr	-248(ra) # 80002470 <_ZN6ThreadD1Ev>
    80004570:	00048513          	mv	a0,s1
    80004574:	ffffe097          	auipc	ra,0xffffe
    80004578:	f94080e7          	jalr	-108(ra) # 80002508 <_ZdlPv>
    8000457c:	01813083          	ld	ra,24(sp)
    80004580:	01013403          	ld	s0,16(sp)
    80004584:	00813483          	ld	s1,8(sp)
    80004588:	02010113          	addi	sp,sp,32
    8000458c:	00008067          	ret

0000000080004590 <_ZN19ConsumerProducerCPP8ProducerD1Ev>:
    class Producer : public Thread {
    80004590:	ff010113          	addi	sp,sp,-16
    80004594:	00113423          	sd	ra,8(sp)
    80004598:	00813023          	sd	s0,0(sp)
    8000459c:	01010413          	addi	s0,sp,16
    800045a0:	00004797          	auipc	a5,0x4
    800045a4:	7e078793          	addi	a5,a5,2016 # 80008d80 <_ZTVN19ConsumerProducerCPP8ProducerE+0x10>
    800045a8:	00f53023          	sd	a5,0(a0)
    800045ac:	ffffe097          	auipc	ra,0xffffe
    800045b0:	ec4080e7          	jalr	-316(ra) # 80002470 <_ZN6ThreadD1Ev>
    800045b4:	00813083          	ld	ra,8(sp)
    800045b8:	00013403          	ld	s0,0(sp)
    800045bc:	01010113          	addi	sp,sp,16
    800045c0:	00008067          	ret

00000000800045c4 <_ZN19ConsumerProducerCPP8ProducerD0Ev>:
    800045c4:	fe010113          	addi	sp,sp,-32
    800045c8:	00113c23          	sd	ra,24(sp)
    800045cc:	00813823          	sd	s0,16(sp)
    800045d0:	00913423          	sd	s1,8(sp)
    800045d4:	02010413          	addi	s0,sp,32
    800045d8:	00050493          	mv	s1,a0
    800045dc:	00004797          	auipc	a5,0x4
    800045e0:	7a478793          	addi	a5,a5,1956 # 80008d80 <_ZTVN19ConsumerProducerCPP8ProducerE+0x10>
    800045e4:	00f53023          	sd	a5,0(a0)
    800045e8:	ffffe097          	auipc	ra,0xffffe
    800045ec:	e88080e7          	jalr	-376(ra) # 80002470 <_ZN6ThreadD1Ev>
    800045f0:	00048513          	mv	a0,s1
    800045f4:	ffffe097          	auipc	ra,0xffffe
    800045f8:	f14080e7          	jalr	-236(ra) # 80002508 <_ZdlPv>
    800045fc:	01813083          	ld	ra,24(sp)
    80004600:	01013403          	ld	s0,16(sp)
    80004604:	00813483          	ld	s1,8(sp)
    80004608:	02010113          	addi	sp,sp,32
    8000460c:	00008067          	ret

0000000080004610 <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv>:
        void run() override {
    80004610:	fe010113          	addi	sp,sp,-32
    80004614:	00113c23          	sd	ra,24(sp)
    80004618:	00813823          	sd	s0,16(sp)
    8000461c:	00913423          	sd	s1,8(sp)
    80004620:	02010413          	addi	s0,sp,32
    80004624:	00050493          	mv	s1,a0
            while ((key = getc()) != 0x1b) {
    80004628:	ffffd097          	auipc	ra,0xffffd
    8000462c:	f40080e7          	jalr	-192(ra) # 80001568 <_Z4getcv>
    80004630:	0005059b          	sext.w	a1,a0
    80004634:	01b00793          	li	a5,27
    80004638:	00f58c63          	beq	a1,a5,80004650 <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv+0x40>
                td->buffer->put(key);
    8000463c:	0104b783          	ld	a5,16(s1)
    80004640:	0087b503          	ld	a0,8(a5)
    80004644:	fffff097          	auipc	ra,0xfffff
    80004648:	288080e7          	jalr	648(ra) # 800038cc <_ZN9BufferCPP3putEi>
            while ((key = getc()) != 0x1b) {
    8000464c:	fddff06f          	j	80004628 <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv+0x18>
            threadEnd = 1;
    80004650:	00100793          	li	a5,1
    80004654:	00005717          	auipc	a4,0x5
    80004658:	88f72e23          	sw	a5,-1892(a4) # 80008ef0 <_ZN19ConsumerProducerCPP9threadEndE>
            td->buffer->put('!');
    8000465c:	0104b783          	ld	a5,16(s1)
    80004660:	02100593          	li	a1,33
    80004664:	0087b503          	ld	a0,8(a5)
    80004668:	fffff097          	auipc	ra,0xfffff
    8000466c:	264080e7          	jalr	612(ra) # 800038cc <_ZN9BufferCPP3putEi>
            td->sem->signal();
    80004670:	0104b783          	ld	a5,16(s1)
    80004674:	0107b503          	ld	a0,16(a5)
    80004678:	ffffe097          	auipc	ra,0xffffe
    8000467c:	178080e7          	jalr	376(ra) # 800027f0 <_ZN9Semaphore6signalEv>
        }
    80004680:	01813083          	ld	ra,24(sp)
    80004684:	01013403          	ld	s0,16(sp)
    80004688:	00813483          	ld	s1,8(sp)
    8000468c:	02010113          	addi	sp,sp,32
    80004690:	00008067          	ret

0000000080004694 <_ZN19ConsumerProducerCPP8Producer3runEv>:
        void run() override {
    80004694:	fe010113          	addi	sp,sp,-32
    80004698:	00113c23          	sd	ra,24(sp)
    8000469c:	00813823          	sd	s0,16(sp)
    800046a0:	00913423          	sd	s1,8(sp)
    800046a4:	01213023          	sd	s2,0(sp)
    800046a8:	02010413          	addi	s0,sp,32
    800046ac:	00050493          	mv	s1,a0
            int i = 0;
    800046b0:	00000913          	li	s2,0
            while (!threadEnd) {
    800046b4:	00005797          	auipc	a5,0x5
    800046b8:	83c7a783          	lw	a5,-1988(a5) # 80008ef0 <_ZN19ConsumerProducerCPP9threadEndE>
    800046bc:	04079263          	bnez	a5,80004700 <_ZN19ConsumerProducerCPP8Producer3runEv+0x6c>
                td->buffer->put(td->id + '0');
    800046c0:	0104b783          	ld	a5,16(s1)
    800046c4:	0007a583          	lw	a1,0(a5)
    800046c8:	0305859b          	addiw	a1,a1,48
    800046cc:	0087b503          	ld	a0,8(a5)
    800046d0:	fffff097          	auipc	ra,0xfffff
    800046d4:	1fc080e7          	jalr	508(ra) # 800038cc <_ZN9BufferCPP3putEi>
                i++;
    800046d8:	0019071b          	addiw	a4,s2,1
    800046dc:	0007091b          	sext.w	s2,a4
                Thread::sleep((i+td->id)%5);
    800046e0:	0104b783          	ld	a5,16(s1)
    800046e4:	0007a783          	lw	a5,0(a5)
    800046e8:	00e787bb          	addw	a5,a5,a4
    800046ec:	00500513          	li	a0,5
    800046f0:	02a7e53b          	remw	a0,a5,a0
    800046f4:	ffffe097          	auipc	ra,0xffffe
    800046f8:	f58080e7          	jalr	-168(ra) # 8000264c <_ZN6Thread5sleepEm>
            while (!threadEnd) {
    800046fc:	fb9ff06f          	j	800046b4 <_ZN19ConsumerProducerCPP8Producer3runEv+0x20>
            td->sem->signal();
    80004700:	0104b783          	ld	a5,16(s1)
    80004704:	0107b503          	ld	a0,16(a5)
    80004708:	ffffe097          	auipc	ra,0xffffe
    8000470c:	0e8080e7          	jalr	232(ra) # 800027f0 <_ZN9Semaphore6signalEv>
        }
    80004710:	01813083          	ld	ra,24(sp)
    80004714:	01013403          	ld	s0,16(sp)
    80004718:	00813483          	ld	s1,8(sp)
    8000471c:	00013903          	ld	s2,0(sp)
    80004720:	02010113          	addi	sp,sp,32
    80004724:	00008067          	ret

0000000080004728 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004728:	fe010113          	addi	sp,sp,-32
    8000472c:	00113c23          	sd	ra,24(sp)
    80004730:	00813823          	sd	s0,16(sp)
    80004734:	00913423          	sd	s1,8(sp)
    80004738:	01213023          	sd	s2,0(sp)
    8000473c:	02010413          	addi	s0,sp,32
    80004740:	00050493          	mv	s1,a0
    80004744:	00058913          	mv	s2,a1
    80004748:	0015879b          	addiw	a5,a1,1
    8000474c:	0007851b          	sext.w	a0,a5
    80004750:	00f4a023          	sw	a5,0(s1)
    80004754:	0004a823          	sw	zero,16(s1)
    80004758:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    8000475c:	00251513          	slli	a0,a0,0x2
    80004760:	ffffd097          	auipc	ra,0xffffd
    80004764:	af8080e7          	jalr	-1288(ra) # 80001258 <_Z9mem_allocm>
    80004768:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    8000476c:	00000593          	li	a1,0
    80004770:	02048513          	addi	a0,s1,32
    80004774:	ffffd097          	auipc	ra,0xffffd
    80004778:	cf8080e7          	jalr	-776(ra) # 8000146c <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    8000477c:	00090593          	mv	a1,s2
    80004780:	01848513          	addi	a0,s1,24
    80004784:	ffffd097          	auipc	ra,0xffffd
    80004788:	ce8080e7          	jalr	-792(ra) # 8000146c <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    8000478c:	00100593          	li	a1,1
    80004790:	02848513          	addi	a0,s1,40
    80004794:	ffffd097          	auipc	ra,0xffffd
    80004798:	cd8080e7          	jalr	-808(ra) # 8000146c <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    8000479c:	00100593          	li	a1,1
    800047a0:	03048513          	addi	a0,s1,48
    800047a4:	ffffd097          	auipc	ra,0xffffd
    800047a8:	cc8080e7          	jalr	-824(ra) # 8000146c <_Z8sem_openPP4_semj>
}
    800047ac:	01813083          	ld	ra,24(sp)
    800047b0:	01013403          	ld	s0,16(sp)
    800047b4:	00813483          	ld	s1,8(sp)
    800047b8:	00013903          	ld	s2,0(sp)
    800047bc:	02010113          	addi	sp,sp,32
    800047c0:	00008067          	ret

00000000800047c4 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    800047c4:	fe010113          	addi	sp,sp,-32
    800047c8:	00113c23          	sd	ra,24(sp)
    800047cc:	00813823          	sd	s0,16(sp)
    800047d0:	00913423          	sd	s1,8(sp)
    800047d4:	01213023          	sd	s2,0(sp)
    800047d8:	02010413          	addi	s0,sp,32
    800047dc:	00050493          	mv	s1,a0
    800047e0:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800047e4:	01853503          	ld	a0,24(a0)
    800047e8:	ffffd097          	auipc	ra,0xffffd
    800047ec:	cf0080e7          	jalr	-784(ra) # 800014d8 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    800047f0:	0304b503          	ld	a0,48(s1)
    800047f4:	ffffd097          	auipc	ra,0xffffd
    800047f8:	ce4080e7          	jalr	-796(ra) # 800014d8 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    800047fc:	0084b783          	ld	a5,8(s1)
    80004800:	0144a703          	lw	a4,20(s1)
    80004804:	00271713          	slli	a4,a4,0x2
    80004808:	00e787b3          	add	a5,a5,a4
    8000480c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80004810:	0144a783          	lw	a5,20(s1)
    80004814:	0017879b          	addiw	a5,a5,1
    80004818:	0004a703          	lw	a4,0(s1)
    8000481c:	02e7e7bb          	remw	a5,a5,a4
    80004820:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80004824:	0304b503          	ld	a0,48(s1)
    80004828:	ffffd097          	auipc	ra,0xffffd
    8000482c:	ce0080e7          	jalr	-800(ra) # 80001508 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80004830:	0204b503          	ld	a0,32(s1)
    80004834:	ffffd097          	auipc	ra,0xffffd
    80004838:	cd4080e7          	jalr	-812(ra) # 80001508 <_Z10sem_signalP4_sem>

}
    8000483c:	01813083          	ld	ra,24(sp)
    80004840:	01013403          	ld	s0,16(sp)
    80004844:	00813483          	ld	s1,8(sp)
    80004848:	00013903          	ld	s2,0(sp)
    8000484c:	02010113          	addi	sp,sp,32
    80004850:	00008067          	ret

0000000080004854 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80004854:	fe010113          	addi	sp,sp,-32
    80004858:	00113c23          	sd	ra,24(sp)
    8000485c:	00813823          	sd	s0,16(sp)
    80004860:	00913423          	sd	s1,8(sp)
    80004864:	01213023          	sd	s2,0(sp)
    80004868:	02010413          	addi	s0,sp,32
    8000486c:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80004870:	02053503          	ld	a0,32(a0)
    80004874:	ffffd097          	auipc	ra,0xffffd
    80004878:	c64080e7          	jalr	-924(ra) # 800014d8 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    8000487c:	0284b503          	ld	a0,40(s1)
    80004880:	ffffd097          	auipc	ra,0xffffd
    80004884:	c58080e7          	jalr	-936(ra) # 800014d8 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80004888:	0084b703          	ld	a4,8(s1)
    8000488c:	0104a783          	lw	a5,16(s1)
    80004890:	00279693          	slli	a3,a5,0x2
    80004894:	00d70733          	add	a4,a4,a3
    80004898:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000489c:	0017879b          	addiw	a5,a5,1
    800048a0:	0004a703          	lw	a4,0(s1)
    800048a4:	02e7e7bb          	remw	a5,a5,a4
    800048a8:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800048ac:	0284b503          	ld	a0,40(s1)
    800048b0:	ffffd097          	auipc	ra,0xffffd
    800048b4:	c58080e7          	jalr	-936(ra) # 80001508 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    800048b8:	0184b503          	ld	a0,24(s1)
    800048bc:	ffffd097          	auipc	ra,0xffffd
    800048c0:	c4c080e7          	jalr	-948(ra) # 80001508 <_Z10sem_signalP4_sem>

    return ret;
}
    800048c4:	00090513          	mv	a0,s2
    800048c8:	01813083          	ld	ra,24(sp)
    800048cc:	01013403          	ld	s0,16(sp)
    800048d0:	00813483          	ld	s1,8(sp)
    800048d4:	00013903          	ld	s2,0(sp)
    800048d8:	02010113          	addi	sp,sp,32
    800048dc:	00008067          	ret

00000000800048e0 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800048e0:	fe010113          	addi	sp,sp,-32
    800048e4:	00113c23          	sd	ra,24(sp)
    800048e8:	00813823          	sd	s0,16(sp)
    800048ec:	00913423          	sd	s1,8(sp)
    800048f0:	01213023          	sd	s2,0(sp)
    800048f4:	02010413          	addi	s0,sp,32
    800048f8:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800048fc:	02853503          	ld	a0,40(a0)
    80004900:	ffffd097          	auipc	ra,0xffffd
    80004904:	bd8080e7          	jalr	-1064(ra) # 800014d8 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80004908:	0304b503          	ld	a0,48(s1)
    8000490c:	ffffd097          	auipc	ra,0xffffd
    80004910:	bcc080e7          	jalr	-1076(ra) # 800014d8 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80004914:	0144a783          	lw	a5,20(s1)
    80004918:	0104a903          	lw	s2,16(s1)
    8000491c:	0327ce63          	blt	a5,s2,80004958 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80004920:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80004924:	0304b503          	ld	a0,48(s1)
    80004928:	ffffd097          	auipc	ra,0xffffd
    8000492c:	be0080e7          	jalr	-1056(ra) # 80001508 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80004930:	0284b503          	ld	a0,40(s1)
    80004934:	ffffd097          	auipc	ra,0xffffd
    80004938:	bd4080e7          	jalr	-1068(ra) # 80001508 <_Z10sem_signalP4_sem>

    return ret;
}
    8000493c:	00090513          	mv	a0,s2
    80004940:	01813083          	ld	ra,24(sp)
    80004944:	01013403          	ld	s0,16(sp)
    80004948:	00813483          	ld	s1,8(sp)
    8000494c:	00013903          	ld	s2,0(sp)
    80004950:	02010113          	addi	sp,sp,32
    80004954:	00008067          	ret
        ret = cap - head + tail;
    80004958:	0004a703          	lw	a4,0(s1)
    8000495c:	4127093b          	subw	s2,a4,s2
    80004960:	00f9093b          	addw	s2,s2,a5
    80004964:	fc1ff06f          	j	80004924 <_ZN6Buffer6getCntEv+0x44>

0000000080004968 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80004968:	fe010113          	addi	sp,sp,-32
    8000496c:	00113c23          	sd	ra,24(sp)
    80004970:	00813823          	sd	s0,16(sp)
    80004974:	00913423          	sd	s1,8(sp)
    80004978:	02010413          	addi	s0,sp,32
    8000497c:	00050493          	mv	s1,a0
    putc('\n');
    80004980:	00a00513          	li	a0,10
    80004984:	ffffd097          	auipc	ra,0xffffd
    80004988:	c10080e7          	jalr	-1008(ra) # 80001594 <_Z4putcc>
    printString("Buffer deleted!\n");
    8000498c:	00002517          	auipc	a0,0x2
    80004990:	7bc50513          	addi	a0,a0,1980 # 80007148 <CONSOLE_STATUS+0x138>
    80004994:	fffff097          	auipc	ra,0xfffff
    80004998:	b38080e7          	jalr	-1224(ra) # 800034cc <_Z11printStringPKc>
    while (getCnt() > 0) {
    8000499c:	00048513          	mv	a0,s1
    800049a0:	00000097          	auipc	ra,0x0
    800049a4:	f40080e7          	jalr	-192(ra) # 800048e0 <_ZN6Buffer6getCntEv>
    800049a8:	02a05c63          	blez	a0,800049e0 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    800049ac:	0084b783          	ld	a5,8(s1)
    800049b0:	0104a703          	lw	a4,16(s1)
    800049b4:	00271713          	slli	a4,a4,0x2
    800049b8:	00e787b3          	add	a5,a5,a4
        putc(ch);
    800049bc:	0007c503          	lbu	a0,0(a5)
    800049c0:	ffffd097          	auipc	ra,0xffffd
    800049c4:	bd4080e7          	jalr	-1068(ra) # 80001594 <_Z4putcc>
        head = (head + 1) % cap;
    800049c8:	0104a783          	lw	a5,16(s1)
    800049cc:	0017879b          	addiw	a5,a5,1
    800049d0:	0004a703          	lw	a4,0(s1)
    800049d4:	02e7e7bb          	remw	a5,a5,a4
    800049d8:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800049dc:	fc1ff06f          	j	8000499c <_ZN6BufferD1Ev+0x34>
    putc('!');
    800049e0:	02100513          	li	a0,33
    800049e4:	ffffd097          	auipc	ra,0xffffd
    800049e8:	bb0080e7          	jalr	-1104(ra) # 80001594 <_Z4putcc>
    putc('\n');
    800049ec:	00a00513          	li	a0,10
    800049f0:	ffffd097          	auipc	ra,0xffffd
    800049f4:	ba4080e7          	jalr	-1116(ra) # 80001594 <_Z4putcc>
    mem_free(buffer);
    800049f8:	0084b503          	ld	a0,8(s1)
    800049fc:	ffffd097          	auipc	ra,0xffffd
    80004a00:	890080e7          	jalr	-1904(ra) # 8000128c <_Z8mem_freePv>
    sem_close(itemAvailable);
    80004a04:	0204b503          	ld	a0,32(s1)
    80004a08:	ffffd097          	auipc	ra,0xffffd
    80004a0c:	aa0080e7          	jalr	-1376(ra) # 800014a8 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80004a10:	0184b503          	ld	a0,24(s1)
    80004a14:	ffffd097          	auipc	ra,0xffffd
    80004a18:	a94080e7          	jalr	-1388(ra) # 800014a8 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80004a1c:	0304b503          	ld	a0,48(s1)
    80004a20:	ffffd097          	auipc	ra,0xffffd
    80004a24:	a88080e7          	jalr	-1400(ra) # 800014a8 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    80004a28:	0284b503          	ld	a0,40(s1)
    80004a2c:	ffffd097          	auipc	ra,0xffffd
    80004a30:	a7c080e7          	jalr	-1412(ra) # 800014a8 <_Z9sem_closeP4_sem>
}
    80004a34:	01813083          	ld	ra,24(sp)
    80004a38:	01013403          	ld	s0,16(sp)
    80004a3c:	00813483          	ld	s1,8(sp)
    80004a40:	02010113          	addi	sp,sp,32
    80004a44:	00008067          	ret

0000000080004a48 <start>:
    80004a48:	ff010113          	addi	sp,sp,-16
    80004a4c:	00813423          	sd	s0,8(sp)
    80004a50:	01010413          	addi	s0,sp,16
    80004a54:	300027f3          	csrr	a5,mstatus
    80004a58:	ffffe737          	lui	a4,0xffffe
    80004a5c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff467f>
    80004a60:	00e7f7b3          	and	a5,a5,a4
    80004a64:	00001737          	lui	a4,0x1
    80004a68:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80004a6c:	00e7e7b3          	or	a5,a5,a4
    80004a70:	30079073          	csrw	mstatus,a5
    80004a74:	00000797          	auipc	a5,0x0
    80004a78:	16078793          	addi	a5,a5,352 # 80004bd4 <system_main>
    80004a7c:	34179073          	csrw	mepc,a5
    80004a80:	00000793          	li	a5,0
    80004a84:	18079073          	csrw	satp,a5
    80004a88:	000107b7          	lui	a5,0x10
    80004a8c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80004a90:	30279073          	csrw	medeleg,a5
    80004a94:	30379073          	csrw	mideleg,a5
    80004a98:	104027f3          	csrr	a5,sie
    80004a9c:	2227e793          	ori	a5,a5,546
    80004aa0:	10479073          	csrw	sie,a5
    80004aa4:	fff00793          	li	a5,-1
    80004aa8:	00a7d793          	srli	a5,a5,0xa
    80004aac:	3b079073          	csrw	pmpaddr0,a5
    80004ab0:	00f00793          	li	a5,15
    80004ab4:	3a079073          	csrw	pmpcfg0,a5
    80004ab8:	f14027f3          	csrr	a5,mhartid
    80004abc:	0200c737          	lui	a4,0x200c
    80004ac0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80004ac4:	0007869b          	sext.w	a3,a5
    80004ac8:	00269713          	slli	a4,a3,0x2
    80004acc:	000f4637          	lui	a2,0xf4
    80004ad0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80004ad4:	00d70733          	add	a4,a4,a3
    80004ad8:	0037979b          	slliw	a5,a5,0x3
    80004adc:	020046b7          	lui	a3,0x2004
    80004ae0:	00d787b3          	add	a5,a5,a3
    80004ae4:	00c585b3          	add	a1,a1,a2
    80004ae8:	00371693          	slli	a3,a4,0x3
    80004aec:	00004717          	auipc	a4,0x4
    80004af0:	43470713          	addi	a4,a4,1076 # 80008f20 <timer_scratch>
    80004af4:	00b7b023          	sd	a1,0(a5)
    80004af8:	00d70733          	add	a4,a4,a3
    80004afc:	00f73c23          	sd	a5,24(a4)
    80004b00:	02c73023          	sd	a2,32(a4)
    80004b04:	34071073          	csrw	mscratch,a4
    80004b08:	00000797          	auipc	a5,0x0
    80004b0c:	6e878793          	addi	a5,a5,1768 # 800051f0 <timervec>
    80004b10:	30579073          	csrw	mtvec,a5
    80004b14:	300027f3          	csrr	a5,mstatus
    80004b18:	0087e793          	ori	a5,a5,8
    80004b1c:	30079073          	csrw	mstatus,a5
    80004b20:	304027f3          	csrr	a5,mie
    80004b24:	0807e793          	ori	a5,a5,128
    80004b28:	30479073          	csrw	mie,a5
    80004b2c:	f14027f3          	csrr	a5,mhartid
    80004b30:	0007879b          	sext.w	a5,a5
    80004b34:	00078213          	mv	tp,a5
    80004b38:	30200073          	mret
    80004b3c:	00813403          	ld	s0,8(sp)
    80004b40:	01010113          	addi	sp,sp,16
    80004b44:	00008067          	ret

0000000080004b48 <timerinit>:
    80004b48:	ff010113          	addi	sp,sp,-16
    80004b4c:	00813423          	sd	s0,8(sp)
    80004b50:	01010413          	addi	s0,sp,16
    80004b54:	f14027f3          	csrr	a5,mhartid
    80004b58:	0200c737          	lui	a4,0x200c
    80004b5c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80004b60:	0007869b          	sext.w	a3,a5
    80004b64:	00269713          	slli	a4,a3,0x2
    80004b68:	000f4637          	lui	a2,0xf4
    80004b6c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80004b70:	00d70733          	add	a4,a4,a3
    80004b74:	0037979b          	slliw	a5,a5,0x3
    80004b78:	020046b7          	lui	a3,0x2004
    80004b7c:	00d787b3          	add	a5,a5,a3
    80004b80:	00c585b3          	add	a1,a1,a2
    80004b84:	00371693          	slli	a3,a4,0x3
    80004b88:	00004717          	auipc	a4,0x4
    80004b8c:	39870713          	addi	a4,a4,920 # 80008f20 <timer_scratch>
    80004b90:	00b7b023          	sd	a1,0(a5)
    80004b94:	00d70733          	add	a4,a4,a3
    80004b98:	00f73c23          	sd	a5,24(a4)
    80004b9c:	02c73023          	sd	a2,32(a4)
    80004ba0:	34071073          	csrw	mscratch,a4
    80004ba4:	00000797          	auipc	a5,0x0
    80004ba8:	64c78793          	addi	a5,a5,1612 # 800051f0 <timervec>
    80004bac:	30579073          	csrw	mtvec,a5
    80004bb0:	300027f3          	csrr	a5,mstatus
    80004bb4:	0087e793          	ori	a5,a5,8
    80004bb8:	30079073          	csrw	mstatus,a5
    80004bbc:	304027f3          	csrr	a5,mie
    80004bc0:	0807e793          	ori	a5,a5,128
    80004bc4:	30479073          	csrw	mie,a5
    80004bc8:	00813403          	ld	s0,8(sp)
    80004bcc:	01010113          	addi	sp,sp,16
    80004bd0:	00008067          	ret

0000000080004bd4 <system_main>:
    80004bd4:	fe010113          	addi	sp,sp,-32
    80004bd8:	00813823          	sd	s0,16(sp)
    80004bdc:	00913423          	sd	s1,8(sp)
    80004be0:	00113c23          	sd	ra,24(sp)
    80004be4:	02010413          	addi	s0,sp,32
    80004be8:	00000097          	auipc	ra,0x0
    80004bec:	0c4080e7          	jalr	196(ra) # 80004cac <cpuid>
    80004bf0:	00004497          	auipc	s1,0x4
    80004bf4:	25048493          	addi	s1,s1,592 # 80008e40 <started>
    80004bf8:	02050263          	beqz	a0,80004c1c <system_main+0x48>
    80004bfc:	0004a783          	lw	a5,0(s1)
    80004c00:	0007879b          	sext.w	a5,a5
    80004c04:	fe078ce3          	beqz	a5,80004bfc <system_main+0x28>
    80004c08:	0ff0000f          	fence
    80004c0c:	00002517          	auipc	a0,0x2
    80004c10:	67c50513          	addi	a0,a0,1660 # 80007288 <CONSOLE_STATUS+0x278>
    80004c14:	00001097          	auipc	ra,0x1
    80004c18:	a78080e7          	jalr	-1416(ra) # 8000568c <panic>
    80004c1c:	00001097          	auipc	ra,0x1
    80004c20:	9cc080e7          	jalr	-1588(ra) # 800055e8 <consoleinit>
    80004c24:	00001097          	auipc	ra,0x1
    80004c28:	158080e7          	jalr	344(ra) # 80005d7c <printfinit>
    80004c2c:	00002517          	auipc	a0,0x2
    80004c30:	57c50513          	addi	a0,a0,1404 # 800071a8 <CONSOLE_STATUS+0x198>
    80004c34:	00001097          	auipc	ra,0x1
    80004c38:	ab4080e7          	jalr	-1356(ra) # 800056e8 <__printf>
    80004c3c:	00002517          	auipc	a0,0x2
    80004c40:	61c50513          	addi	a0,a0,1564 # 80007258 <CONSOLE_STATUS+0x248>
    80004c44:	00001097          	auipc	ra,0x1
    80004c48:	aa4080e7          	jalr	-1372(ra) # 800056e8 <__printf>
    80004c4c:	00002517          	auipc	a0,0x2
    80004c50:	55c50513          	addi	a0,a0,1372 # 800071a8 <CONSOLE_STATUS+0x198>
    80004c54:	00001097          	auipc	ra,0x1
    80004c58:	a94080e7          	jalr	-1388(ra) # 800056e8 <__printf>
    80004c5c:	00001097          	auipc	ra,0x1
    80004c60:	4ac080e7          	jalr	1196(ra) # 80006108 <kinit>
    80004c64:	00000097          	auipc	ra,0x0
    80004c68:	148080e7          	jalr	328(ra) # 80004dac <trapinit>
    80004c6c:	00000097          	auipc	ra,0x0
    80004c70:	16c080e7          	jalr	364(ra) # 80004dd8 <trapinithart>
    80004c74:	00000097          	auipc	ra,0x0
    80004c78:	5bc080e7          	jalr	1468(ra) # 80005230 <plicinit>
    80004c7c:	00000097          	auipc	ra,0x0
    80004c80:	5dc080e7          	jalr	1500(ra) # 80005258 <plicinithart>
    80004c84:	00000097          	auipc	ra,0x0
    80004c88:	078080e7          	jalr	120(ra) # 80004cfc <userinit>
    80004c8c:	0ff0000f          	fence
    80004c90:	00100793          	li	a5,1
    80004c94:	00002517          	auipc	a0,0x2
    80004c98:	5dc50513          	addi	a0,a0,1500 # 80007270 <CONSOLE_STATUS+0x260>
    80004c9c:	00f4a023          	sw	a5,0(s1)
    80004ca0:	00001097          	auipc	ra,0x1
    80004ca4:	a48080e7          	jalr	-1464(ra) # 800056e8 <__printf>
    80004ca8:	0000006f          	j	80004ca8 <system_main+0xd4>

0000000080004cac <cpuid>:
    80004cac:	ff010113          	addi	sp,sp,-16
    80004cb0:	00813423          	sd	s0,8(sp)
    80004cb4:	01010413          	addi	s0,sp,16
    80004cb8:	00020513          	mv	a0,tp
    80004cbc:	00813403          	ld	s0,8(sp)
    80004cc0:	0005051b          	sext.w	a0,a0
    80004cc4:	01010113          	addi	sp,sp,16
    80004cc8:	00008067          	ret

0000000080004ccc <mycpu>:
    80004ccc:	ff010113          	addi	sp,sp,-16
    80004cd0:	00813423          	sd	s0,8(sp)
    80004cd4:	01010413          	addi	s0,sp,16
    80004cd8:	00020793          	mv	a5,tp
    80004cdc:	00813403          	ld	s0,8(sp)
    80004ce0:	0007879b          	sext.w	a5,a5
    80004ce4:	00779793          	slli	a5,a5,0x7
    80004ce8:	00005517          	auipc	a0,0x5
    80004cec:	26850513          	addi	a0,a0,616 # 80009f50 <cpus>
    80004cf0:	00f50533          	add	a0,a0,a5
    80004cf4:	01010113          	addi	sp,sp,16
    80004cf8:	00008067          	ret

0000000080004cfc <userinit>:
    80004cfc:	ff010113          	addi	sp,sp,-16
    80004d00:	00813423          	sd	s0,8(sp)
    80004d04:	01010413          	addi	s0,sp,16
    80004d08:	00813403          	ld	s0,8(sp)
    80004d0c:	01010113          	addi	sp,sp,16
    80004d10:	ffffe317          	auipc	t1,0xffffe
    80004d14:	79430067          	jr	1940(t1) # 800034a4 <main>

0000000080004d18 <either_copyout>:
    80004d18:	ff010113          	addi	sp,sp,-16
    80004d1c:	00813023          	sd	s0,0(sp)
    80004d20:	00113423          	sd	ra,8(sp)
    80004d24:	01010413          	addi	s0,sp,16
    80004d28:	02051663          	bnez	a0,80004d54 <either_copyout+0x3c>
    80004d2c:	00058513          	mv	a0,a1
    80004d30:	00060593          	mv	a1,a2
    80004d34:	0006861b          	sext.w	a2,a3
    80004d38:	00002097          	auipc	ra,0x2
    80004d3c:	c5c080e7          	jalr	-932(ra) # 80006994 <__memmove>
    80004d40:	00813083          	ld	ra,8(sp)
    80004d44:	00013403          	ld	s0,0(sp)
    80004d48:	00000513          	li	a0,0
    80004d4c:	01010113          	addi	sp,sp,16
    80004d50:	00008067          	ret
    80004d54:	00002517          	auipc	a0,0x2
    80004d58:	55c50513          	addi	a0,a0,1372 # 800072b0 <CONSOLE_STATUS+0x2a0>
    80004d5c:	00001097          	auipc	ra,0x1
    80004d60:	930080e7          	jalr	-1744(ra) # 8000568c <panic>

0000000080004d64 <either_copyin>:
    80004d64:	ff010113          	addi	sp,sp,-16
    80004d68:	00813023          	sd	s0,0(sp)
    80004d6c:	00113423          	sd	ra,8(sp)
    80004d70:	01010413          	addi	s0,sp,16
    80004d74:	02059463          	bnez	a1,80004d9c <either_copyin+0x38>
    80004d78:	00060593          	mv	a1,a2
    80004d7c:	0006861b          	sext.w	a2,a3
    80004d80:	00002097          	auipc	ra,0x2
    80004d84:	c14080e7          	jalr	-1004(ra) # 80006994 <__memmove>
    80004d88:	00813083          	ld	ra,8(sp)
    80004d8c:	00013403          	ld	s0,0(sp)
    80004d90:	00000513          	li	a0,0
    80004d94:	01010113          	addi	sp,sp,16
    80004d98:	00008067          	ret
    80004d9c:	00002517          	auipc	a0,0x2
    80004da0:	53c50513          	addi	a0,a0,1340 # 800072d8 <CONSOLE_STATUS+0x2c8>
    80004da4:	00001097          	auipc	ra,0x1
    80004da8:	8e8080e7          	jalr	-1816(ra) # 8000568c <panic>

0000000080004dac <trapinit>:
    80004dac:	ff010113          	addi	sp,sp,-16
    80004db0:	00813423          	sd	s0,8(sp)
    80004db4:	01010413          	addi	s0,sp,16
    80004db8:	00813403          	ld	s0,8(sp)
    80004dbc:	00002597          	auipc	a1,0x2
    80004dc0:	54458593          	addi	a1,a1,1348 # 80007300 <CONSOLE_STATUS+0x2f0>
    80004dc4:	00005517          	auipc	a0,0x5
    80004dc8:	20c50513          	addi	a0,a0,524 # 80009fd0 <tickslock>
    80004dcc:	01010113          	addi	sp,sp,16
    80004dd0:	00001317          	auipc	t1,0x1
    80004dd4:	5c830067          	jr	1480(t1) # 80006398 <initlock>

0000000080004dd8 <trapinithart>:
    80004dd8:	ff010113          	addi	sp,sp,-16
    80004ddc:	00813423          	sd	s0,8(sp)
    80004de0:	01010413          	addi	s0,sp,16
    80004de4:	00000797          	auipc	a5,0x0
    80004de8:	2fc78793          	addi	a5,a5,764 # 800050e0 <kernelvec>
    80004dec:	10579073          	csrw	stvec,a5
    80004df0:	00813403          	ld	s0,8(sp)
    80004df4:	01010113          	addi	sp,sp,16
    80004df8:	00008067          	ret

0000000080004dfc <usertrap>:
    80004dfc:	ff010113          	addi	sp,sp,-16
    80004e00:	00813423          	sd	s0,8(sp)
    80004e04:	01010413          	addi	s0,sp,16
    80004e08:	00813403          	ld	s0,8(sp)
    80004e0c:	01010113          	addi	sp,sp,16
    80004e10:	00008067          	ret

0000000080004e14 <usertrapret>:
    80004e14:	ff010113          	addi	sp,sp,-16
    80004e18:	00813423          	sd	s0,8(sp)
    80004e1c:	01010413          	addi	s0,sp,16
    80004e20:	00813403          	ld	s0,8(sp)
    80004e24:	01010113          	addi	sp,sp,16
    80004e28:	00008067          	ret

0000000080004e2c <kerneltrap>:
    80004e2c:	fe010113          	addi	sp,sp,-32
    80004e30:	00813823          	sd	s0,16(sp)
    80004e34:	00113c23          	sd	ra,24(sp)
    80004e38:	00913423          	sd	s1,8(sp)
    80004e3c:	02010413          	addi	s0,sp,32
    80004e40:	142025f3          	csrr	a1,scause
    80004e44:	100027f3          	csrr	a5,sstatus
    80004e48:	0027f793          	andi	a5,a5,2
    80004e4c:	10079c63          	bnez	a5,80004f64 <kerneltrap+0x138>
    80004e50:	142027f3          	csrr	a5,scause
    80004e54:	0207ce63          	bltz	a5,80004e90 <kerneltrap+0x64>
    80004e58:	00002517          	auipc	a0,0x2
    80004e5c:	4f050513          	addi	a0,a0,1264 # 80007348 <CONSOLE_STATUS+0x338>
    80004e60:	00001097          	auipc	ra,0x1
    80004e64:	888080e7          	jalr	-1912(ra) # 800056e8 <__printf>
    80004e68:	141025f3          	csrr	a1,sepc
    80004e6c:	14302673          	csrr	a2,stval
    80004e70:	00002517          	auipc	a0,0x2
    80004e74:	4e850513          	addi	a0,a0,1256 # 80007358 <CONSOLE_STATUS+0x348>
    80004e78:	00001097          	auipc	ra,0x1
    80004e7c:	870080e7          	jalr	-1936(ra) # 800056e8 <__printf>
    80004e80:	00002517          	auipc	a0,0x2
    80004e84:	4f050513          	addi	a0,a0,1264 # 80007370 <CONSOLE_STATUS+0x360>
    80004e88:	00001097          	auipc	ra,0x1
    80004e8c:	804080e7          	jalr	-2044(ra) # 8000568c <panic>
    80004e90:	0ff7f713          	andi	a4,a5,255
    80004e94:	00900693          	li	a3,9
    80004e98:	04d70063          	beq	a4,a3,80004ed8 <kerneltrap+0xac>
    80004e9c:	fff00713          	li	a4,-1
    80004ea0:	03f71713          	slli	a4,a4,0x3f
    80004ea4:	00170713          	addi	a4,a4,1
    80004ea8:	fae798e3          	bne	a5,a4,80004e58 <kerneltrap+0x2c>
    80004eac:	00000097          	auipc	ra,0x0
    80004eb0:	e00080e7          	jalr	-512(ra) # 80004cac <cpuid>
    80004eb4:	06050663          	beqz	a0,80004f20 <kerneltrap+0xf4>
    80004eb8:	144027f3          	csrr	a5,sip
    80004ebc:	ffd7f793          	andi	a5,a5,-3
    80004ec0:	14479073          	csrw	sip,a5
    80004ec4:	01813083          	ld	ra,24(sp)
    80004ec8:	01013403          	ld	s0,16(sp)
    80004ecc:	00813483          	ld	s1,8(sp)
    80004ed0:	02010113          	addi	sp,sp,32
    80004ed4:	00008067          	ret
    80004ed8:	00000097          	auipc	ra,0x0
    80004edc:	3cc080e7          	jalr	972(ra) # 800052a4 <plic_claim>
    80004ee0:	00a00793          	li	a5,10
    80004ee4:	00050493          	mv	s1,a0
    80004ee8:	06f50863          	beq	a0,a5,80004f58 <kerneltrap+0x12c>
    80004eec:	fc050ce3          	beqz	a0,80004ec4 <kerneltrap+0x98>
    80004ef0:	00050593          	mv	a1,a0
    80004ef4:	00002517          	auipc	a0,0x2
    80004ef8:	43450513          	addi	a0,a0,1076 # 80007328 <CONSOLE_STATUS+0x318>
    80004efc:	00000097          	auipc	ra,0x0
    80004f00:	7ec080e7          	jalr	2028(ra) # 800056e8 <__printf>
    80004f04:	01013403          	ld	s0,16(sp)
    80004f08:	01813083          	ld	ra,24(sp)
    80004f0c:	00048513          	mv	a0,s1
    80004f10:	00813483          	ld	s1,8(sp)
    80004f14:	02010113          	addi	sp,sp,32
    80004f18:	00000317          	auipc	t1,0x0
    80004f1c:	3c430067          	jr	964(t1) # 800052dc <plic_complete>
    80004f20:	00005517          	auipc	a0,0x5
    80004f24:	0b050513          	addi	a0,a0,176 # 80009fd0 <tickslock>
    80004f28:	00001097          	auipc	ra,0x1
    80004f2c:	494080e7          	jalr	1172(ra) # 800063bc <acquire>
    80004f30:	00004717          	auipc	a4,0x4
    80004f34:	f1470713          	addi	a4,a4,-236 # 80008e44 <ticks>
    80004f38:	00072783          	lw	a5,0(a4)
    80004f3c:	00005517          	auipc	a0,0x5
    80004f40:	09450513          	addi	a0,a0,148 # 80009fd0 <tickslock>
    80004f44:	0017879b          	addiw	a5,a5,1
    80004f48:	00f72023          	sw	a5,0(a4)
    80004f4c:	00001097          	auipc	ra,0x1
    80004f50:	53c080e7          	jalr	1340(ra) # 80006488 <release>
    80004f54:	f65ff06f          	j	80004eb8 <kerneltrap+0x8c>
    80004f58:	00001097          	auipc	ra,0x1
    80004f5c:	098080e7          	jalr	152(ra) # 80005ff0 <uartintr>
    80004f60:	fa5ff06f          	j	80004f04 <kerneltrap+0xd8>
    80004f64:	00002517          	auipc	a0,0x2
    80004f68:	3a450513          	addi	a0,a0,932 # 80007308 <CONSOLE_STATUS+0x2f8>
    80004f6c:	00000097          	auipc	ra,0x0
    80004f70:	720080e7          	jalr	1824(ra) # 8000568c <panic>

0000000080004f74 <clockintr>:
    80004f74:	fe010113          	addi	sp,sp,-32
    80004f78:	00813823          	sd	s0,16(sp)
    80004f7c:	00913423          	sd	s1,8(sp)
    80004f80:	00113c23          	sd	ra,24(sp)
    80004f84:	02010413          	addi	s0,sp,32
    80004f88:	00005497          	auipc	s1,0x5
    80004f8c:	04848493          	addi	s1,s1,72 # 80009fd0 <tickslock>
    80004f90:	00048513          	mv	a0,s1
    80004f94:	00001097          	auipc	ra,0x1
    80004f98:	428080e7          	jalr	1064(ra) # 800063bc <acquire>
    80004f9c:	00004717          	auipc	a4,0x4
    80004fa0:	ea870713          	addi	a4,a4,-344 # 80008e44 <ticks>
    80004fa4:	00072783          	lw	a5,0(a4)
    80004fa8:	01013403          	ld	s0,16(sp)
    80004fac:	01813083          	ld	ra,24(sp)
    80004fb0:	00048513          	mv	a0,s1
    80004fb4:	0017879b          	addiw	a5,a5,1
    80004fb8:	00813483          	ld	s1,8(sp)
    80004fbc:	00f72023          	sw	a5,0(a4)
    80004fc0:	02010113          	addi	sp,sp,32
    80004fc4:	00001317          	auipc	t1,0x1
    80004fc8:	4c430067          	jr	1220(t1) # 80006488 <release>

0000000080004fcc <devintr>:
    80004fcc:	142027f3          	csrr	a5,scause
    80004fd0:	00000513          	li	a0,0
    80004fd4:	0007c463          	bltz	a5,80004fdc <devintr+0x10>
    80004fd8:	00008067          	ret
    80004fdc:	fe010113          	addi	sp,sp,-32
    80004fe0:	00813823          	sd	s0,16(sp)
    80004fe4:	00113c23          	sd	ra,24(sp)
    80004fe8:	00913423          	sd	s1,8(sp)
    80004fec:	02010413          	addi	s0,sp,32
    80004ff0:	0ff7f713          	andi	a4,a5,255
    80004ff4:	00900693          	li	a3,9
    80004ff8:	04d70c63          	beq	a4,a3,80005050 <devintr+0x84>
    80004ffc:	fff00713          	li	a4,-1
    80005000:	03f71713          	slli	a4,a4,0x3f
    80005004:	00170713          	addi	a4,a4,1
    80005008:	00e78c63          	beq	a5,a4,80005020 <devintr+0x54>
    8000500c:	01813083          	ld	ra,24(sp)
    80005010:	01013403          	ld	s0,16(sp)
    80005014:	00813483          	ld	s1,8(sp)
    80005018:	02010113          	addi	sp,sp,32
    8000501c:	00008067          	ret
    80005020:	00000097          	auipc	ra,0x0
    80005024:	c8c080e7          	jalr	-884(ra) # 80004cac <cpuid>
    80005028:	06050663          	beqz	a0,80005094 <devintr+0xc8>
    8000502c:	144027f3          	csrr	a5,sip
    80005030:	ffd7f793          	andi	a5,a5,-3
    80005034:	14479073          	csrw	sip,a5
    80005038:	01813083          	ld	ra,24(sp)
    8000503c:	01013403          	ld	s0,16(sp)
    80005040:	00813483          	ld	s1,8(sp)
    80005044:	00200513          	li	a0,2
    80005048:	02010113          	addi	sp,sp,32
    8000504c:	00008067          	ret
    80005050:	00000097          	auipc	ra,0x0
    80005054:	254080e7          	jalr	596(ra) # 800052a4 <plic_claim>
    80005058:	00a00793          	li	a5,10
    8000505c:	00050493          	mv	s1,a0
    80005060:	06f50663          	beq	a0,a5,800050cc <devintr+0x100>
    80005064:	00100513          	li	a0,1
    80005068:	fa0482e3          	beqz	s1,8000500c <devintr+0x40>
    8000506c:	00048593          	mv	a1,s1
    80005070:	00002517          	auipc	a0,0x2
    80005074:	2b850513          	addi	a0,a0,696 # 80007328 <CONSOLE_STATUS+0x318>
    80005078:	00000097          	auipc	ra,0x0
    8000507c:	670080e7          	jalr	1648(ra) # 800056e8 <__printf>
    80005080:	00048513          	mv	a0,s1
    80005084:	00000097          	auipc	ra,0x0
    80005088:	258080e7          	jalr	600(ra) # 800052dc <plic_complete>
    8000508c:	00100513          	li	a0,1
    80005090:	f7dff06f          	j	8000500c <devintr+0x40>
    80005094:	00005517          	auipc	a0,0x5
    80005098:	f3c50513          	addi	a0,a0,-196 # 80009fd0 <tickslock>
    8000509c:	00001097          	auipc	ra,0x1
    800050a0:	320080e7          	jalr	800(ra) # 800063bc <acquire>
    800050a4:	00004717          	auipc	a4,0x4
    800050a8:	da070713          	addi	a4,a4,-608 # 80008e44 <ticks>
    800050ac:	00072783          	lw	a5,0(a4)
    800050b0:	00005517          	auipc	a0,0x5
    800050b4:	f2050513          	addi	a0,a0,-224 # 80009fd0 <tickslock>
    800050b8:	0017879b          	addiw	a5,a5,1
    800050bc:	00f72023          	sw	a5,0(a4)
    800050c0:	00001097          	auipc	ra,0x1
    800050c4:	3c8080e7          	jalr	968(ra) # 80006488 <release>
    800050c8:	f65ff06f          	j	8000502c <devintr+0x60>
    800050cc:	00001097          	auipc	ra,0x1
    800050d0:	f24080e7          	jalr	-220(ra) # 80005ff0 <uartintr>
    800050d4:	fadff06f          	j	80005080 <devintr+0xb4>
	...

00000000800050e0 <kernelvec>:
    800050e0:	f0010113          	addi	sp,sp,-256
    800050e4:	00113023          	sd	ra,0(sp)
    800050e8:	00213423          	sd	sp,8(sp)
    800050ec:	00313823          	sd	gp,16(sp)
    800050f0:	00413c23          	sd	tp,24(sp)
    800050f4:	02513023          	sd	t0,32(sp)
    800050f8:	02613423          	sd	t1,40(sp)
    800050fc:	02713823          	sd	t2,48(sp)
    80005100:	02813c23          	sd	s0,56(sp)
    80005104:	04913023          	sd	s1,64(sp)
    80005108:	04a13423          	sd	a0,72(sp)
    8000510c:	04b13823          	sd	a1,80(sp)
    80005110:	04c13c23          	sd	a2,88(sp)
    80005114:	06d13023          	sd	a3,96(sp)
    80005118:	06e13423          	sd	a4,104(sp)
    8000511c:	06f13823          	sd	a5,112(sp)
    80005120:	07013c23          	sd	a6,120(sp)
    80005124:	09113023          	sd	a7,128(sp)
    80005128:	09213423          	sd	s2,136(sp)
    8000512c:	09313823          	sd	s3,144(sp)
    80005130:	09413c23          	sd	s4,152(sp)
    80005134:	0b513023          	sd	s5,160(sp)
    80005138:	0b613423          	sd	s6,168(sp)
    8000513c:	0b713823          	sd	s7,176(sp)
    80005140:	0b813c23          	sd	s8,184(sp)
    80005144:	0d913023          	sd	s9,192(sp)
    80005148:	0da13423          	sd	s10,200(sp)
    8000514c:	0db13823          	sd	s11,208(sp)
    80005150:	0dc13c23          	sd	t3,216(sp)
    80005154:	0fd13023          	sd	t4,224(sp)
    80005158:	0fe13423          	sd	t5,232(sp)
    8000515c:	0ff13823          	sd	t6,240(sp)
    80005160:	ccdff0ef          	jal	ra,80004e2c <kerneltrap>
    80005164:	00013083          	ld	ra,0(sp)
    80005168:	00813103          	ld	sp,8(sp)
    8000516c:	01013183          	ld	gp,16(sp)
    80005170:	02013283          	ld	t0,32(sp)
    80005174:	02813303          	ld	t1,40(sp)
    80005178:	03013383          	ld	t2,48(sp)
    8000517c:	03813403          	ld	s0,56(sp)
    80005180:	04013483          	ld	s1,64(sp)
    80005184:	04813503          	ld	a0,72(sp)
    80005188:	05013583          	ld	a1,80(sp)
    8000518c:	05813603          	ld	a2,88(sp)
    80005190:	06013683          	ld	a3,96(sp)
    80005194:	06813703          	ld	a4,104(sp)
    80005198:	07013783          	ld	a5,112(sp)
    8000519c:	07813803          	ld	a6,120(sp)
    800051a0:	08013883          	ld	a7,128(sp)
    800051a4:	08813903          	ld	s2,136(sp)
    800051a8:	09013983          	ld	s3,144(sp)
    800051ac:	09813a03          	ld	s4,152(sp)
    800051b0:	0a013a83          	ld	s5,160(sp)
    800051b4:	0a813b03          	ld	s6,168(sp)
    800051b8:	0b013b83          	ld	s7,176(sp)
    800051bc:	0b813c03          	ld	s8,184(sp)
    800051c0:	0c013c83          	ld	s9,192(sp)
    800051c4:	0c813d03          	ld	s10,200(sp)
    800051c8:	0d013d83          	ld	s11,208(sp)
    800051cc:	0d813e03          	ld	t3,216(sp)
    800051d0:	0e013e83          	ld	t4,224(sp)
    800051d4:	0e813f03          	ld	t5,232(sp)
    800051d8:	0f013f83          	ld	t6,240(sp)
    800051dc:	10010113          	addi	sp,sp,256
    800051e0:	10200073          	sret
    800051e4:	00000013          	nop
    800051e8:	00000013          	nop
    800051ec:	00000013          	nop

00000000800051f0 <timervec>:
    800051f0:	34051573          	csrrw	a0,mscratch,a0
    800051f4:	00b53023          	sd	a1,0(a0)
    800051f8:	00c53423          	sd	a2,8(a0)
    800051fc:	00d53823          	sd	a3,16(a0)
    80005200:	01853583          	ld	a1,24(a0)
    80005204:	02053603          	ld	a2,32(a0)
    80005208:	0005b683          	ld	a3,0(a1)
    8000520c:	00c686b3          	add	a3,a3,a2
    80005210:	00d5b023          	sd	a3,0(a1)
    80005214:	00200593          	li	a1,2
    80005218:	14459073          	csrw	sip,a1
    8000521c:	01053683          	ld	a3,16(a0)
    80005220:	00853603          	ld	a2,8(a0)
    80005224:	00053583          	ld	a1,0(a0)
    80005228:	34051573          	csrrw	a0,mscratch,a0
    8000522c:	30200073          	mret

0000000080005230 <plicinit>:
    80005230:	ff010113          	addi	sp,sp,-16
    80005234:	00813423          	sd	s0,8(sp)
    80005238:	01010413          	addi	s0,sp,16
    8000523c:	00813403          	ld	s0,8(sp)
    80005240:	0c0007b7          	lui	a5,0xc000
    80005244:	00100713          	li	a4,1
    80005248:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000524c:	00e7a223          	sw	a4,4(a5)
    80005250:	01010113          	addi	sp,sp,16
    80005254:	00008067          	ret

0000000080005258 <plicinithart>:
    80005258:	ff010113          	addi	sp,sp,-16
    8000525c:	00813023          	sd	s0,0(sp)
    80005260:	00113423          	sd	ra,8(sp)
    80005264:	01010413          	addi	s0,sp,16
    80005268:	00000097          	auipc	ra,0x0
    8000526c:	a44080e7          	jalr	-1468(ra) # 80004cac <cpuid>
    80005270:	0085171b          	slliw	a4,a0,0x8
    80005274:	0c0027b7          	lui	a5,0xc002
    80005278:	00e787b3          	add	a5,a5,a4
    8000527c:	40200713          	li	a4,1026
    80005280:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80005284:	00813083          	ld	ra,8(sp)
    80005288:	00013403          	ld	s0,0(sp)
    8000528c:	00d5151b          	slliw	a0,a0,0xd
    80005290:	0c2017b7          	lui	a5,0xc201
    80005294:	00a78533          	add	a0,a5,a0
    80005298:	00052023          	sw	zero,0(a0)
    8000529c:	01010113          	addi	sp,sp,16
    800052a0:	00008067          	ret

00000000800052a4 <plic_claim>:
    800052a4:	ff010113          	addi	sp,sp,-16
    800052a8:	00813023          	sd	s0,0(sp)
    800052ac:	00113423          	sd	ra,8(sp)
    800052b0:	01010413          	addi	s0,sp,16
    800052b4:	00000097          	auipc	ra,0x0
    800052b8:	9f8080e7          	jalr	-1544(ra) # 80004cac <cpuid>
    800052bc:	00813083          	ld	ra,8(sp)
    800052c0:	00013403          	ld	s0,0(sp)
    800052c4:	00d5151b          	slliw	a0,a0,0xd
    800052c8:	0c2017b7          	lui	a5,0xc201
    800052cc:	00a78533          	add	a0,a5,a0
    800052d0:	00452503          	lw	a0,4(a0)
    800052d4:	01010113          	addi	sp,sp,16
    800052d8:	00008067          	ret

00000000800052dc <plic_complete>:
    800052dc:	fe010113          	addi	sp,sp,-32
    800052e0:	00813823          	sd	s0,16(sp)
    800052e4:	00913423          	sd	s1,8(sp)
    800052e8:	00113c23          	sd	ra,24(sp)
    800052ec:	02010413          	addi	s0,sp,32
    800052f0:	00050493          	mv	s1,a0
    800052f4:	00000097          	auipc	ra,0x0
    800052f8:	9b8080e7          	jalr	-1608(ra) # 80004cac <cpuid>
    800052fc:	01813083          	ld	ra,24(sp)
    80005300:	01013403          	ld	s0,16(sp)
    80005304:	00d5179b          	slliw	a5,a0,0xd
    80005308:	0c201737          	lui	a4,0xc201
    8000530c:	00f707b3          	add	a5,a4,a5
    80005310:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80005314:	00813483          	ld	s1,8(sp)
    80005318:	02010113          	addi	sp,sp,32
    8000531c:	00008067          	ret

0000000080005320 <consolewrite>:
    80005320:	fb010113          	addi	sp,sp,-80
    80005324:	04813023          	sd	s0,64(sp)
    80005328:	04113423          	sd	ra,72(sp)
    8000532c:	02913c23          	sd	s1,56(sp)
    80005330:	03213823          	sd	s2,48(sp)
    80005334:	03313423          	sd	s3,40(sp)
    80005338:	03413023          	sd	s4,32(sp)
    8000533c:	01513c23          	sd	s5,24(sp)
    80005340:	05010413          	addi	s0,sp,80
    80005344:	06c05c63          	blez	a2,800053bc <consolewrite+0x9c>
    80005348:	00060993          	mv	s3,a2
    8000534c:	00050a13          	mv	s4,a0
    80005350:	00058493          	mv	s1,a1
    80005354:	00000913          	li	s2,0
    80005358:	fff00a93          	li	s5,-1
    8000535c:	01c0006f          	j	80005378 <consolewrite+0x58>
    80005360:	fbf44503          	lbu	a0,-65(s0)
    80005364:	0019091b          	addiw	s2,s2,1
    80005368:	00148493          	addi	s1,s1,1
    8000536c:	00001097          	auipc	ra,0x1
    80005370:	a9c080e7          	jalr	-1380(ra) # 80005e08 <uartputc>
    80005374:	03298063          	beq	s3,s2,80005394 <consolewrite+0x74>
    80005378:	00048613          	mv	a2,s1
    8000537c:	00100693          	li	a3,1
    80005380:	000a0593          	mv	a1,s4
    80005384:	fbf40513          	addi	a0,s0,-65
    80005388:	00000097          	auipc	ra,0x0
    8000538c:	9dc080e7          	jalr	-1572(ra) # 80004d64 <either_copyin>
    80005390:	fd5518e3          	bne	a0,s5,80005360 <consolewrite+0x40>
    80005394:	04813083          	ld	ra,72(sp)
    80005398:	04013403          	ld	s0,64(sp)
    8000539c:	03813483          	ld	s1,56(sp)
    800053a0:	02813983          	ld	s3,40(sp)
    800053a4:	02013a03          	ld	s4,32(sp)
    800053a8:	01813a83          	ld	s5,24(sp)
    800053ac:	00090513          	mv	a0,s2
    800053b0:	03013903          	ld	s2,48(sp)
    800053b4:	05010113          	addi	sp,sp,80
    800053b8:	00008067          	ret
    800053bc:	00000913          	li	s2,0
    800053c0:	fd5ff06f          	j	80005394 <consolewrite+0x74>

00000000800053c4 <consoleread>:
    800053c4:	f9010113          	addi	sp,sp,-112
    800053c8:	06813023          	sd	s0,96(sp)
    800053cc:	04913c23          	sd	s1,88(sp)
    800053d0:	05213823          	sd	s2,80(sp)
    800053d4:	05313423          	sd	s3,72(sp)
    800053d8:	05413023          	sd	s4,64(sp)
    800053dc:	03513c23          	sd	s5,56(sp)
    800053e0:	03613823          	sd	s6,48(sp)
    800053e4:	03713423          	sd	s7,40(sp)
    800053e8:	03813023          	sd	s8,32(sp)
    800053ec:	06113423          	sd	ra,104(sp)
    800053f0:	01913c23          	sd	s9,24(sp)
    800053f4:	07010413          	addi	s0,sp,112
    800053f8:	00060b93          	mv	s7,a2
    800053fc:	00050913          	mv	s2,a0
    80005400:	00058c13          	mv	s8,a1
    80005404:	00060b1b          	sext.w	s6,a2
    80005408:	00005497          	auipc	s1,0x5
    8000540c:	bf048493          	addi	s1,s1,-1040 # 80009ff8 <cons>
    80005410:	00400993          	li	s3,4
    80005414:	fff00a13          	li	s4,-1
    80005418:	00a00a93          	li	s5,10
    8000541c:	05705e63          	blez	s7,80005478 <consoleread+0xb4>
    80005420:	09c4a703          	lw	a4,156(s1)
    80005424:	0984a783          	lw	a5,152(s1)
    80005428:	0007071b          	sext.w	a4,a4
    8000542c:	08e78463          	beq	a5,a4,800054b4 <consoleread+0xf0>
    80005430:	07f7f713          	andi	a4,a5,127
    80005434:	00e48733          	add	a4,s1,a4
    80005438:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000543c:	0017869b          	addiw	a3,a5,1
    80005440:	08d4ac23          	sw	a3,152(s1)
    80005444:	00070c9b          	sext.w	s9,a4
    80005448:	0b370663          	beq	a4,s3,800054f4 <consoleread+0x130>
    8000544c:	00100693          	li	a3,1
    80005450:	f9f40613          	addi	a2,s0,-97
    80005454:	000c0593          	mv	a1,s8
    80005458:	00090513          	mv	a0,s2
    8000545c:	f8e40fa3          	sb	a4,-97(s0)
    80005460:	00000097          	auipc	ra,0x0
    80005464:	8b8080e7          	jalr	-1864(ra) # 80004d18 <either_copyout>
    80005468:	01450863          	beq	a0,s4,80005478 <consoleread+0xb4>
    8000546c:	001c0c13          	addi	s8,s8,1
    80005470:	fffb8b9b          	addiw	s7,s7,-1
    80005474:	fb5c94e3          	bne	s9,s5,8000541c <consoleread+0x58>
    80005478:	000b851b          	sext.w	a0,s7
    8000547c:	06813083          	ld	ra,104(sp)
    80005480:	06013403          	ld	s0,96(sp)
    80005484:	05813483          	ld	s1,88(sp)
    80005488:	05013903          	ld	s2,80(sp)
    8000548c:	04813983          	ld	s3,72(sp)
    80005490:	04013a03          	ld	s4,64(sp)
    80005494:	03813a83          	ld	s5,56(sp)
    80005498:	02813b83          	ld	s7,40(sp)
    8000549c:	02013c03          	ld	s8,32(sp)
    800054a0:	01813c83          	ld	s9,24(sp)
    800054a4:	40ab053b          	subw	a0,s6,a0
    800054a8:	03013b03          	ld	s6,48(sp)
    800054ac:	07010113          	addi	sp,sp,112
    800054b0:	00008067          	ret
    800054b4:	00001097          	auipc	ra,0x1
    800054b8:	1d8080e7          	jalr	472(ra) # 8000668c <push_on>
    800054bc:	0984a703          	lw	a4,152(s1)
    800054c0:	09c4a783          	lw	a5,156(s1)
    800054c4:	0007879b          	sext.w	a5,a5
    800054c8:	fef70ce3          	beq	a4,a5,800054c0 <consoleread+0xfc>
    800054cc:	00001097          	auipc	ra,0x1
    800054d0:	234080e7          	jalr	564(ra) # 80006700 <pop_on>
    800054d4:	0984a783          	lw	a5,152(s1)
    800054d8:	07f7f713          	andi	a4,a5,127
    800054dc:	00e48733          	add	a4,s1,a4
    800054e0:	01874703          	lbu	a4,24(a4)
    800054e4:	0017869b          	addiw	a3,a5,1
    800054e8:	08d4ac23          	sw	a3,152(s1)
    800054ec:	00070c9b          	sext.w	s9,a4
    800054f0:	f5371ee3          	bne	a4,s3,8000544c <consoleread+0x88>
    800054f4:	000b851b          	sext.w	a0,s7
    800054f8:	f96bf2e3          	bgeu	s7,s6,8000547c <consoleread+0xb8>
    800054fc:	08f4ac23          	sw	a5,152(s1)
    80005500:	f7dff06f          	j	8000547c <consoleread+0xb8>

0000000080005504 <consputc>:
    80005504:	10000793          	li	a5,256
    80005508:	00f50663          	beq	a0,a5,80005514 <consputc+0x10>
    8000550c:	00001317          	auipc	t1,0x1
    80005510:	9f430067          	jr	-1548(t1) # 80005f00 <uartputc_sync>
    80005514:	ff010113          	addi	sp,sp,-16
    80005518:	00113423          	sd	ra,8(sp)
    8000551c:	00813023          	sd	s0,0(sp)
    80005520:	01010413          	addi	s0,sp,16
    80005524:	00800513          	li	a0,8
    80005528:	00001097          	auipc	ra,0x1
    8000552c:	9d8080e7          	jalr	-1576(ra) # 80005f00 <uartputc_sync>
    80005530:	02000513          	li	a0,32
    80005534:	00001097          	auipc	ra,0x1
    80005538:	9cc080e7          	jalr	-1588(ra) # 80005f00 <uartputc_sync>
    8000553c:	00013403          	ld	s0,0(sp)
    80005540:	00813083          	ld	ra,8(sp)
    80005544:	00800513          	li	a0,8
    80005548:	01010113          	addi	sp,sp,16
    8000554c:	00001317          	auipc	t1,0x1
    80005550:	9b430067          	jr	-1612(t1) # 80005f00 <uartputc_sync>

0000000080005554 <consoleintr>:
    80005554:	fe010113          	addi	sp,sp,-32
    80005558:	00813823          	sd	s0,16(sp)
    8000555c:	00913423          	sd	s1,8(sp)
    80005560:	01213023          	sd	s2,0(sp)
    80005564:	00113c23          	sd	ra,24(sp)
    80005568:	02010413          	addi	s0,sp,32
    8000556c:	00005917          	auipc	s2,0x5
    80005570:	a8c90913          	addi	s2,s2,-1396 # 80009ff8 <cons>
    80005574:	00050493          	mv	s1,a0
    80005578:	00090513          	mv	a0,s2
    8000557c:	00001097          	auipc	ra,0x1
    80005580:	e40080e7          	jalr	-448(ra) # 800063bc <acquire>
    80005584:	02048c63          	beqz	s1,800055bc <consoleintr+0x68>
    80005588:	0a092783          	lw	a5,160(s2)
    8000558c:	09892703          	lw	a4,152(s2)
    80005590:	07f00693          	li	a3,127
    80005594:	40e7873b          	subw	a4,a5,a4
    80005598:	02e6e263          	bltu	a3,a4,800055bc <consoleintr+0x68>
    8000559c:	00d00713          	li	a4,13
    800055a0:	04e48063          	beq	s1,a4,800055e0 <consoleintr+0x8c>
    800055a4:	07f7f713          	andi	a4,a5,127
    800055a8:	00e90733          	add	a4,s2,a4
    800055ac:	0017879b          	addiw	a5,a5,1
    800055b0:	0af92023          	sw	a5,160(s2)
    800055b4:	00970c23          	sb	s1,24(a4)
    800055b8:	08f92e23          	sw	a5,156(s2)
    800055bc:	01013403          	ld	s0,16(sp)
    800055c0:	01813083          	ld	ra,24(sp)
    800055c4:	00813483          	ld	s1,8(sp)
    800055c8:	00013903          	ld	s2,0(sp)
    800055cc:	00005517          	auipc	a0,0x5
    800055d0:	a2c50513          	addi	a0,a0,-1492 # 80009ff8 <cons>
    800055d4:	02010113          	addi	sp,sp,32
    800055d8:	00001317          	auipc	t1,0x1
    800055dc:	eb030067          	jr	-336(t1) # 80006488 <release>
    800055e0:	00a00493          	li	s1,10
    800055e4:	fc1ff06f          	j	800055a4 <consoleintr+0x50>

00000000800055e8 <consoleinit>:
    800055e8:	fe010113          	addi	sp,sp,-32
    800055ec:	00113c23          	sd	ra,24(sp)
    800055f0:	00813823          	sd	s0,16(sp)
    800055f4:	00913423          	sd	s1,8(sp)
    800055f8:	02010413          	addi	s0,sp,32
    800055fc:	00005497          	auipc	s1,0x5
    80005600:	9fc48493          	addi	s1,s1,-1540 # 80009ff8 <cons>
    80005604:	00048513          	mv	a0,s1
    80005608:	00002597          	auipc	a1,0x2
    8000560c:	d7858593          	addi	a1,a1,-648 # 80007380 <CONSOLE_STATUS+0x370>
    80005610:	00001097          	auipc	ra,0x1
    80005614:	d88080e7          	jalr	-632(ra) # 80006398 <initlock>
    80005618:	00000097          	auipc	ra,0x0
    8000561c:	7ac080e7          	jalr	1964(ra) # 80005dc4 <uartinit>
    80005620:	01813083          	ld	ra,24(sp)
    80005624:	01013403          	ld	s0,16(sp)
    80005628:	00000797          	auipc	a5,0x0
    8000562c:	d9c78793          	addi	a5,a5,-612 # 800053c4 <consoleread>
    80005630:	0af4bc23          	sd	a5,184(s1)
    80005634:	00000797          	auipc	a5,0x0
    80005638:	cec78793          	addi	a5,a5,-788 # 80005320 <consolewrite>
    8000563c:	0cf4b023          	sd	a5,192(s1)
    80005640:	00813483          	ld	s1,8(sp)
    80005644:	02010113          	addi	sp,sp,32
    80005648:	00008067          	ret

000000008000564c <console_read>:
    8000564c:	ff010113          	addi	sp,sp,-16
    80005650:	00813423          	sd	s0,8(sp)
    80005654:	01010413          	addi	s0,sp,16
    80005658:	00813403          	ld	s0,8(sp)
    8000565c:	00005317          	auipc	t1,0x5
    80005660:	a5433303          	ld	t1,-1452(t1) # 8000a0b0 <devsw+0x10>
    80005664:	01010113          	addi	sp,sp,16
    80005668:	00030067          	jr	t1

000000008000566c <console_write>:
    8000566c:	ff010113          	addi	sp,sp,-16
    80005670:	00813423          	sd	s0,8(sp)
    80005674:	01010413          	addi	s0,sp,16
    80005678:	00813403          	ld	s0,8(sp)
    8000567c:	00005317          	auipc	t1,0x5
    80005680:	a3c33303          	ld	t1,-1476(t1) # 8000a0b8 <devsw+0x18>
    80005684:	01010113          	addi	sp,sp,16
    80005688:	00030067          	jr	t1

000000008000568c <panic>:
    8000568c:	fe010113          	addi	sp,sp,-32
    80005690:	00113c23          	sd	ra,24(sp)
    80005694:	00813823          	sd	s0,16(sp)
    80005698:	00913423          	sd	s1,8(sp)
    8000569c:	02010413          	addi	s0,sp,32
    800056a0:	00050493          	mv	s1,a0
    800056a4:	00002517          	auipc	a0,0x2
    800056a8:	ce450513          	addi	a0,a0,-796 # 80007388 <CONSOLE_STATUS+0x378>
    800056ac:	00005797          	auipc	a5,0x5
    800056b0:	aa07a623          	sw	zero,-1364(a5) # 8000a158 <pr+0x18>
    800056b4:	00000097          	auipc	ra,0x0
    800056b8:	034080e7          	jalr	52(ra) # 800056e8 <__printf>
    800056bc:	00048513          	mv	a0,s1
    800056c0:	00000097          	auipc	ra,0x0
    800056c4:	028080e7          	jalr	40(ra) # 800056e8 <__printf>
    800056c8:	00002517          	auipc	a0,0x2
    800056cc:	ae050513          	addi	a0,a0,-1312 # 800071a8 <CONSOLE_STATUS+0x198>
    800056d0:	00000097          	auipc	ra,0x0
    800056d4:	018080e7          	jalr	24(ra) # 800056e8 <__printf>
    800056d8:	00100793          	li	a5,1
    800056dc:	00003717          	auipc	a4,0x3
    800056e0:	76f72623          	sw	a5,1900(a4) # 80008e48 <panicked>
    800056e4:	0000006f          	j	800056e4 <panic+0x58>

00000000800056e8 <__printf>:
    800056e8:	f3010113          	addi	sp,sp,-208
    800056ec:	08813023          	sd	s0,128(sp)
    800056f0:	07313423          	sd	s3,104(sp)
    800056f4:	09010413          	addi	s0,sp,144
    800056f8:	05813023          	sd	s8,64(sp)
    800056fc:	08113423          	sd	ra,136(sp)
    80005700:	06913c23          	sd	s1,120(sp)
    80005704:	07213823          	sd	s2,112(sp)
    80005708:	07413023          	sd	s4,96(sp)
    8000570c:	05513c23          	sd	s5,88(sp)
    80005710:	05613823          	sd	s6,80(sp)
    80005714:	05713423          	sd	s7,72(sp)
    80005718:	03913c23          	sd	s9,56(sp)
    8000571c:	03a13823          	sd	s10,48(sp)
    80005720:	03b13423          	sd	s11,40(sp)
    80005724:	00005317          	auipc	t1,0x5
    80005728:	a1c30313          	addi	t1,t1,-1508 # 8000a140 <pr>
    8000572c:	01832c03          	lw	s8,24(t1)
    80005730:	00b43423          	sd	a1,8(s0)
    80005734:	00c43823          	sd	a2,16(s0)
    80005738:	00d43c23          	sd	a3,24(s0)
    8000573c:	02e43023          	sd	a4,32(s0)
    80005740:	02f43423          	sd	a5,40(s0)
    80005744:	03043823          	sd	a6,48(s0)
    80005748:	03143c23          	sd	a7,56(s0)
    8000574c:	00050993          	mv	s3,a0
    80005750:	4a0c1663          	bnez	s8,80005bfc <__printf+0x514>
    80005754:	60098c63          	beqz	s3,80005d6c <__printf+0x684>
    80005758:	0009c503          	lbu	a0,0(s3)
    8000575c:	00840793          	addi	a5,s0,8
    80005760:	f6f43c23          	sd	a5,-136(s0)
    80005764:	00000493          	li	s1,0
    80005768:	22050063          	beqz	a0,80005988 <__printf+0x2a0>
    8000576c:	00002a37          	lui	s4,0x2
    80005770:	00018ab7          	lui	s5,0x18
    80005774:	000f4b37          	lui	s6,0xf4
    80005778:	00989bb7          	lui	s7,0x989
    8000577c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80005780:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80005784:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80005788:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000578c:	00148c9b          	addiw	s9,s1,1
    80005790:	02500793          	li	a5,37
    80005794:	01998933          	add	s2,s3,s9
    80005798:	38f51263          	bne	a0,a5,80005b1c <__printf+0x434>
    8000579c:	00094783          	lbu	a5,0(s2)
    800057a0:	00078c9b          	sext.w	s9,a5
    800057a4:	1e078263          	beqz	a5,80005988 <__printf+0x2a0>
    800057a8:	0024849b          	addiw	s1,s1,2
    800057ac:	07000713          	li	a4,112
    800057b0:	00998933          	add	s2,s3,s1
    800057b4:	38e78a63          	beq	a5,a4,80005b48 <__printf+0x460>
    800057b8:	20f76863          	bltu	a4,a5,800059c8 <__printf+0x2e0>
    800057bc:	42a78863          	beq	a5,a0,80005bec <__printf+0x504>
    800057c0:	06400713          	li	a4,100
    800057c4:	40e79663          	bne	a5,a4,80005bd0 <__printf+0x4e8>
    800057c8:	f7843783          	ld	a5,-136(s0)
    800057cc:	0007a603          	lw	a2,0(a5)
    800057d0:	00878793          	addi	a5,a5,8
    800057d4:	f6f43c23          	sd	a5,-136(s0)
    800057d8:	42064a63          	bltz	a2,80005c0c <__printf+0x524>
    800057dc:	00a00713          	li	a4,10
    800057e0:	02e677bb          	remuw	a5,a2,a4
    800057e4:	00002d97          	auipc	s11,0x2
    800057e8:	bccd8d93          	addi	s11,s11,-1076 # 800073b0 <digits>
    800057ec:	00900593          	li	a1,9
    800057f0:	0006051b          	sext.w	a0,a2
    800057f4:	00000c93          	li	s9,0
    800057f8:	02079793          	slli	a5,a5,0x20
    800057fc:	0207d793          	srli	a5,a5,0x20
    80005800:	00fd87b3          	add	a5,s11,a5
    80005804:	0007c783          	lbu	a5,0(a5)
    80005808:	02e656bb          	divuw	a3,a2,a4
    8000580c:	f8f40023          	sb	a5,-128(s0)
    80005810:	14c5d863          	bge	a1,a2,80005960 <__printf+0x278>
    80005814:	06300593          	li	a1,99
    80005818:	00100c93          	li	s9,1
    8000581c:	02e6f7bb          	remuw	a5,a3,a4
    80005820:	02079793          	slli	a5,a5,0x20
    80005824:	0207d793          	srli	a5,a5,0x20
    80005828:	00fd87b3          	add	a5,s11,a5
    8000582c:	0007c783          	lbu	a5,0(a5)
    80005830:	02e6d73b          	divuw	a4,a3,a4
    80005834:	f8f400a3          	sb	a5,-127(s0)
    80005838:	12a5f463          	bgeu	a1,a0,80005960 <__printf+0x278>
    8000583c:	00a00693          	li	a3,10
    80005840:	00900593          	li	a1,9
    80005844:	02d777bb          	remuw	a5,a4,a3
    80005848:	02079793          	slli	a5,a5,0x20
    8000584c:	0207d793          	srli	a5,a5,0x20
    80005850:	00fd87b3          	add	a5,s11,a5
    80005854:	0007c503          	lbu	a0,0(a5)
    80005858:	02d757bb          	divuw	a5,a4,a3
    8000585c:	f8a40123          	sb	a0,-126(s0)
    80005860:	48e5f263          	bgeu	a1,a4,80005ce4 <__printf+0x5fc>
    80005864:	06300513          	li	a0,99
    80005868:	02d7f5bb          	remuw	a1,a5,a3
    8000586c:	02059593          	slli	a1,a1,0x20
    80005870:	0205d593          	srli	a1,a1,0x20
    80005874:	00bd85b3          	add	a1,s11,a1
    80005878:	0005c583          	lbu	a1,0(a1)
    8000587c:	02d7d7bb          	divuw	a5,a5,a3
    80005880:	f8b401a3          	sb	a1,-125(s0)
    80005884:	48e57263          	bgeu	a0,a4,80005d08 <__printf+0x620>
    80005888:	3e700513          	li	a0,999
    8000588c:	02d7f5bb          	remuw	a1,a5,a3
    80005890:	02059593          	slli	a1,a1,0x20
    80005894:	0205d593          	srli	a1,a1,0x20
    80005898:	00bd85b3          	add	a1,s11,a1
    8000589c:	0005c583          	lbu	a1,0(a1)
    800058a0:	02d7d7bb          	divuw	a5,a5,a3
    800058a4:	f8b40223          	sb	a1,-124(s0)
    800058a8:	46e57663          	bgeu	a0,a4,80005d14 <__printf+0x62c>
    800058ac:	02d7f5bb          	remuw	a1,a5,a3
    800058b0:	02059593          	slli	a1,a1,0x20
    800058b4:	0205d593          	srli	a1,a1,0x20
    800058b8:	00bd85b3          	add	a1,s11,a1
    800058bc:	0005c583          	lbu	a1,0(a1)
    800058c0:	02d7d7bb          	divuw	a5,a5,a3
    800058c4:	f8b402a3          	sb	a1,-123(s0)
    800058c8:	46ea7863          	bgeu	s4,a4,80005d38 <__printf+0x650>
    800058cc:	02d7f5bb          	remuw	a1,a5,a3
    800058d0:	02059593          	slli	a1,a1,0x20
    800058d4:	0205d593          	srli	a1,a1,0x20
    800058d8:	00bd85b3          	add	a1,s11,a1
    800058dc:	0005c583          	lbu	a1,0(a1)
    800058e0:	02d7d7bb          	divuw	a5,a5,a3
    800058e4:	f8b40323          	sb	a1,-122(s0)
    800058e8:	3eeaf863          	bgeu	s5,a4,80005cd8 <__printf+0x5f0>
    800058ec:	02d7f5bb          	remuw	a1,a5,a3
    800058f0:	02059593          	slli	a1,a1,0x20
    800058f4:	0205d593          	srli	a1,a1,0x20
    800058f8:	00bd85b3          	add	a1,s11,a1
    800058fc:	0005c583          	lbu	a1,0(a1)
    80005900:	02d7d7bb          	divuw	a5,a5,a3
    80005904:	f8b403a3          	sb	a1,-121(s0)
    80005908:	42eb7e63          	bgeu	s6,a4,80005d44 <__printf+0x65c>
    8000590c:	02d7f5bb          	remuw	a1,a5,a3
    80005910:	02059593          	slli	a1,a1,0x20
    80005914:	0205d593          	srli	a1,a1,0x20
    80005918:	00bd85b3          	add	a1,s11,a1
    8000591c:	0005c583          	lbu	a1,0(a1)
    80005920:	02d7d7bb          	divuw	a5,a5,a3
    80005924:	f8b40423          	sb	a1,-120(s0)
    80005928:	42ebfc63          	bgeu	s7,a4,80005d60 <__printf+0x678>
    8000592c:	02079793          	slli	a5,a5,0x20
    80005930:	0207d793          	srli	a5,a5,0x20
    80005934:	00fd8db3          	add	s11,s11,a5
    80005938:	000dc703          	lbu	a4,0(s11)
    8000593c:	00a00793          	li	a5,10
    80005940:	00900c93          	li	s9,9
    80005944:	f8e404a3          	sb	a4,-119(s0)
    80005948:	00065c63          	bgez	a2,80005960 <__printf+0x278>
    8000594c:	f9040713          	addi	a4,s0,-112
    80005950:	00f70733          	add	a4,a4,a5
    80005954:	02d00693          	li	a3,45
    80005958:	fed70823          	sb	a3,-16(a4)
    8000595c:	00078c93          	mv	s9,a5
    80005960:	f8040793          	addi	a5,s0,-128
    80005964:	01978cb3          	add	s9,a5,s9
    80005968:	f7f40d13          	addi	s10,s0,-129
    8000596c:	000cc503          	lbu	a0,0(s9)
    80005970:	fffc8c93          	addi	s9,s9,-1
    80005974:	00000097          	auipc	ra,0x0
    80005978:	b90080e7          	jalr	-1136(ra) # 80005504 <consputc>
    8000597c:	ffac98e3          	bne	s9,s10,8000596c <__printf+0x284>
    80005980:	00094503          	lbu	a0,0(s2)
    80005984:	e00514e3          	bnez	a0,8000578c <__printf+0xa4>
    80005988:	1a0c1663          	bnez	s8,80005b34 <__printf+0x44c>
    8000598c:	08813083          	ld	ra,136(sp)
    80005990:	08013403          	ld	s0,128(sp)
    80005994:	07813483          	ld	s1,120(sp)
    80005998:	07013903          	ld	s2,112(sp)
    8000599c:	06813983          	ld	s3,104(sp)
    800059a0:	06013a03          	ld	s4,96(sp)
    800059a4:	05813a83          	ld	s5,88(sp)
    800059a8:	05013b03          	ld	s6,80(sp)
    800059ac:	04813b83          	ld	s7,72(sp)
    800059b0:	04013c03          	ld	s8,64(sp)
    800059b4:	03813c83          	ld	s9,56(sp)
    800059b8:	03013d03          	ld	s10,48(sp)
    800059bc:	02813d83          	ld	s11,40(sp)
    800059c0:	0d010113          	addi	sp,sp,208
    800059c4:	00008067          	ret
    800059c8:	07300713          	li	a4,115
    800059cc:	1ce78a63          	beq	a5,a4,80005ba0 <__printf+0x4b8>
    800059d0:	07800713          	li	a4,120
    800059d4:	1ee79e63          	bne	a5,a4,80005bd0 <__printf+0x4e8>
    800059d8:	f7843783          	ld	a5,-136(s0)
    800059dc:	0007a703          	lw	a4,0(a5)
    800059e0:	00878793          	addi	a5,a5,8
    800059e4:	f6f43c23          	sd	a5,-136(s0)
    800059e8:	28074263          	bltz	a4,80005c6c <__printf+0x584>
    800059ec:	00002d97          	auipc	s11,0x2
    800059f0:	9c4d8d93          	addi	s11,s11,-1596 # 800073b0 <digits>
    800059f4:	00f77793          	andi	a5,a4,15
    800059f8:	00fd87b3          	add	a5,s11,a5
    800059fc:	0007c683          	lbu	a3,0(a5)
    80005a00:	00f00613          	li	a2,15
    80005a04:	0007079b          	sext.w	a5,a4
    80005a08:	f8d40023          	sb	a3,-128(s0)
    80005a0c:	0047559b          	srliw	a1,a4,0x4
    80005a10:	0047569b          	srliw	a3,a4,0x4
    80005a14:	00000c93          	li	s9,0
    80005a18:	0ee65063          	bge	a2,a4,80005af8 <__printf+0x410>
    80005a1c:	00f6f693          	andi	a3,a3,15
    80005a20:	00dd86b3          	add	a3,s11,a3
    80005a24:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80005a28:	0087d79b          	srliw	a5,a5,0x8
    80005a2c:	00100c93          	li	s9,1
    80005a30:	f8d400a3          	sb	a3,-127(s0)
    80005a34:	0cb67263          	bgeu	a2,a1,80005af8 <__printf+0x410>
    80005a38:	00f7f693          	andi	a3,a5,15
    80005a3c:	00dd86b3          	add	a3,s11,a3
    80005a40:	0006c583          	lbu	a1,0(a3)
    80005a44:	00f00613          	li	a2,15
    80005a48:	0047d69b          	srliw	a3,a5,0x4
    80005a4c:	f8b40123          	sb	a1,-126(s0)
    80005a50:	0047d593          	srli	a1,a5,0x4
    80005a54:	28f67e63          	bgeu	a2,a5,80005cf0 <__printf+0x608>
    80005a58:	00f6f693          	andi	a3,a3,15
    80005a5c:	00dd86b3          	add	a3,s11,a3
    80005a60:	0006c503          	lbu	a0,0(a3)
    80005a64:	0087d813          	srli	a6,a5,0x8
    80005a68:	0087d69b          	srliw	a3,a5,0x8
    80005a6c:	f8a401a3          	sb	a0,-125(s0)
    80005a70:	28b67663          	bgeu	a2,a1,80005cfc <__printf+0x614>
    80005a74:	00f6f693          	andi	a3,a3,15
    80005a78:	00dd86b3          	add	a3,s11,a3
    80005a7c:	0006c583          	lbu	a1,0(a3)
    80005a80:	00c7d513          	srli	a0,a5,0xc
    80005a84:	00c7d69b          	srliw	a3,a5,0xc
    80005a88:	f8b40223          	sb	a1,-124(s0)
    80005a8c:	29067a63          	bgeu	a2,a6,80005d20 <__printf+0x638>
    80005a90:	00f6f693          	andi	a3,a3,15
    80005a94:	00dd86b3          	add	a3,s11,a3
    80005a98:	0006c583          	lbu	a1,0(a3)
    80005a9c:	0107d813          	srli	a6,a5,0x10
    80005aa0:	0107d69b          	srliw	a3,a5,0x10
    80005aa4:	f8b402a3          	sb	a1,-123(s0)
    80005aa8:	28a67263          	bgeu	a2,a0,80005d2c <__printf+0x644>
    80005aac:	00f6f693          	andi	a3,a3,15
    80005ab0:	00dd86b3          	add	a3,s11,a3
    80005ab4:	0006c683          	lbu	a3,0(a3)
    80005ab8:	0147d79b          	srliw	a5,a5,0x14
    80005abc:	f8d40323          	sb	a3,-122(s0)
    80005ac0:	21067663          	bgeu	a2,a6,80005ccc <__printf+0x5e4>
    80005ac4:	02079793          	slli	a5,a5,0x20
    80005ac8:	0207d793          	srli	a5,a5,0x20
    80005acc:	00fd8db3          	add	s11,s11,a5
    80005ad0:	000dc683          	lbu	a3,0(s11)
    80005ad4:	00800793          	li	a5,8
    80005ad8:	00700c93          	li	s9,7
    80005adc:	f8d403a3          	sb	a3,-121(s0)
    80005ae0:	00075c63          	bgez	a4,80005af8 <__printf+0x410>
    80005ae4:	f9040713          	addi	a4,s0,-112
    80005ae8:	00f70733          	add	a4,a4,a5
    80005aec:	02d00693          	li	a3,45
    80005af0:	fed70823          	sb	a3,-16(a4)
    80005af4:	00078c93          	mv	s9,a5
    80005af8:	f8040793          	addi	a5,s0,-128
    80005afc:	01978cb3          	add	s9,a5,s9
    80005b00:	f7f40d13          	addi	s10,s0,-129
    80005b04:	000cc503          	lbu	a0,0(s9)
    80005b08:	fffc8c93          	addi	s9,s9,-1
    80005b0c:	00000097          	auipc	ra,0x0
    80005b10:	9f8080e7          	jalr	-1544(ra) # 80005504 <consputc>
    80005b14:	ff9d18e3          	bne	s10,s9,80005b04 <__printf+0x41c>
    80005b18:	0100006f          	j	80005b28 <__printf+0x440>
    80005b1c:	00000097          	auipc	ra,0x0
    80005b20:	9e8080e7          	jalr	-1560(ra) # 80005504 <consputc>
    80005b24:	000c8493          	mv	s1,s9
    80005b28:	00094503          	lbu	a0,0(s2)
    80005b2c:	c60510e3          	bnez	a0,8000578c <__printf+0xa4>
    80005b30:	e40c0ee3          	beqz	s8,8000598c <__printf+0x2a4>
    80005b34:	00004517          	auipc	a0,0x4
    80005b38:	60c50513          	addi	a0,a0,1548 # 8000a140 <pr>
    80005b3c:	00001097          	auipc	ra,0x1
    80005b40:	94c080e7          	jalr	-1716(ra) # 80006488 <release>
    80005b44:	e49ff06f          	j	8000598c <__printf+0x2a4>
    80005b48:	f7843783          	ld	a5,-136(s0)
    80005b4c:	03000513          	li	a0,48
    80005b50:	01000d13          	li	s10,16
    80005b54:	00878713          	addi	a4,a5,8
    80005b58:	0007bc83          	ld	s9,0(a5)
    80005b5c:	f6e43c23          	sd	a4,-136(s0)
    80005b60:	00000097          	auipc	ra,0x0
    80005b64:	9a4080e7          	jalr	-1628(ra) # 80005504 <consputc>
    80005b68:	07800513          	li	a0,120
    80005b6c:	00000097          	auipc	ra,0x0
    80005b70:	998080e7          	jalr	-1640(ra) # 80005504 <consputc>
    80005b74:	00002d97          	auipc	s11,0x2
    80005b78:	83cd8d93          	addi	s11,s11,-1988 # 800073b0 <digits>
    80005b7c:	03ccd793          	srli	a5,s9,0x3c
    80005b80:	00fd87b3          	add	a5,s11,a5
    80005b84:	0007c503          	lbu	a0,0(a5)
    80005b88:	fffd0d1b          	addiw	s10,s10,-1
    80005b8c:	004c9c93          	slli	s9,s9,0x4
    80005b90:	00000097          	auipc	ra,0x0
    80005b94:	974080e7          	jalr	-1676(ra) # 80005504 <consputc>
    80005b98:	fe0d12e3          	bnez	s10,80005b7c <__printf+0x494>
    80005b9c:	f8dff06f          	j	80005b28 <__printf+0x440>
    80005ba0:	f7843783          	ld	a5,-136(s0)
    80005ba4:	0007bc83          	ld	s9,0(a5)
    80005ba8:	00878793          	addi	a5,a5,8
    80005bac:	f6f43c23          	sd	a5,-136(s0)
    80005bb0:	000c9a63          	bnez	s9,80005bc4 <__printf+0x4dc>
    80005bb4:	1080006f          	j	80005cbc <__printf+0x5d4>
    80005bb8:	001c8c93          	addi	s9,s9,1
    80005bbc:	00000097          	auipc	ra,0x0
    80005bc0:	948080e7          	jalr	-1720(ra) # 80005504 <consputc>
    80005bc4:	000cc503          	lbu	a0,0(s9)
    80005bc8:	fe0518e3          	bnez	a0,80005bb8 <__printf+0x4d0>
    80005bcc:	f5dff06f          	j	80005b28 <__printf+0x440>
    80005bd0:	02500513          	li	a0,37
    80005bd4:	00000097          	auipc	ra,0x0
    80005bd8:	930080e7          	jalr	-1744(ra) # 80005504 <consputc>
    80005bdc:	000c8513          	mv	a0,s9
    80005be0:	00000097          	auipc	ra,0x0
    80005be4:	924080e7          	jalr	-1756(ra) # 80005504 <consputc>
    80005be8:	f41ff06f          	j	80005b28 <__printf+0x440>
    80005bec:	02500513          	li	a0,37
    80005bf0:	00000097          	auipc	ra,0x0
    80005bf4:	914080e7          	jalr	-1772(ra) # 80005504 <consputc>
    80005bf8:	f31ff06f          	j	80005b28 <__printf+0x440>
    80005bfc:	00030513          	mv	a0,t1
    80005c00:	00000097          	auipc	ra,0x0
    80005c04:	7bc080e7          	jalr	1980(ra) # 800063bc <acquire>
    80005c08:	b4dff06f          	j	80005754 <__printf+0x6c>
    80005c0c:	40c0053b          	negw	a0,a2
    80005c10:	00a00713          	li	a4,10
    80005c14:	02e576bb          	remuw	a3,a0,a4
    80005c18:	00001d97          	auipc	s11,0x1
    80005c1c:	798d8d93          	addi	s11,s11,1944 # 800073b0 <digits>
    80005c20:	ff700593          	li	a1,-9
    80005c24:	02069693          	slli	a3,a3,0x20
    80005c28:	0206d693          	srli	a3,a3,0x20
    80005c2c:	00dd86b3          	add	a3,s11,a3
    80005c30:	0006c683          	lbu	a3,0(a3)
    80005c34:	02e557bb          	divuw	a5,a0,a4
    80005c38:	f8d40023          	sb	a3,-128(s0)
    80005c3c:	10b65e63          	bge	a2,a1,80005d58 <__printf+0x670>
    80005c40:	06300593          	li	a1,99
    80005c44:	02e7f6bb          	remuw	a3,a5,a4
    80005c48:	02069693          	slli	a3,a3,0x20
    80005c4c:	0206d693          	srli	a3,a3,0x20
    80005c50:	00dd86b3          	add	a3,s11,a3
    80005c54:	0006c683          	lbu	a3,0(a3)
    80005c58:	02e7d73b          	divuw	a4,a5,a4
    80005c5c:	00200793          	li	a5,2
    80005c60:	f8d400a3          	sb	a3,-127(s0)
    80005c64:	bca5ece3          	bltu	a1,a0,8000583c <__printf+0x154>
    80005c68:	ce5ff06f          	j	8000594c <__printf+0x264>
    80005c6c:	40e007bb          	negw	a5,a4
    80005c70:	00001d97          	auipc	s11,0x1
    80005c74:	740d8d93          	addi	s11,s11,1856 # 800073b0 <digits>
    80005c78:	00f7f693          	andi	a3,a5,15
    80005c7c:	00dd86b3          	add	a3,s11,a3
    80005c80:	0006c583          	lbu	a1,0(a3)
    80005c84:	ff100613          	li	a2,-15
    80005c88:	0047d69b          	srliw	a3,a5,0x4
    80005c8c:	f8b40023          	sb	a1,-128(s0)
    80005c90:	0047d59b          	srliw	a1,a5,0x4
    80005c94:	0ac75e63          	bge	a4,a2,80005d50 <__printf+0x668>
    80005c98:	00f6f693          	andi	a3,a3,15
    80005c9c:	00dd86b3          	add	a3,s11,a3
    80005ca0:	0006c603          	lbu	a2,0(a3)
    80005ca4:	00f00693          	li	a3,15
    80005ca8:	0087d79b          	srliw	a5,a5,0x8
    80005cac:	f8c400a3          	sb	a2,-127(s0)
    80005cb0:	d8b6e4e3          	bltu	a3,a1,80005a38 <__printf+0x350>
    80005cb4:	00200793          	li	a5,2
    80005cb8:	e2dff06f          	j	80005ae4 <__printf+0x3fc>
    80005cbc:	00001c97          	auipc	s9,0x1
    80005cc0:	6d4c8c93          	addi	s9,s9,1748 # 80007390 <CONSOLE_STATUS+0x380>
    80005cc4:	02800513          	li	a0,40
    80005cc8:	ef1ff06f          	j	80005bb8 <__printf+0x4d0>
    80005ccc:	00700793          	li	a5,7
    80005cd0:	00600c93          	li	s9,6
    80005cd4:	e0dff06f          	j	80005ae0 <__printf+0x3f8>
    80005cd8:	00700793          	li	a5,7
    80005cdc:	00600c93          	li	s9,6
    80005ce0:	c69ff06f          	j	80005948 <__printf+0x260>
    80005ce4:	00300793          	li	a5,3
    80005ce8:	00200c93          	li	s9,2
    80005cec:	c5dff06f          	j	80005948 <__printf+0x260>
    80005cf0:	00300793          	li	a5,3
    80005cf4:	00200c93          	li	s9,2
    80005cf8:	de9ff06f          	j	80005ae0 <__printf+0x3f8>
    80005cfc:	00400793          	li	a5,4
    80005d00:	00300c93          	li	s9,3
    80005d04:	dddff06f          	j	80005ae0 <__printf+0x3f8>
    80005d08:	00400793          	li	a5,4
    80005d0c:	00300c93          	li	s9,3
    80005d10:	c39ff06f          	j	80005948 <__printf+0x260>
    80005d14:	00500793          	li	a5,5
    80005d18:	00400c93          	li	s9,4
    80005d1c:	c2dff06f          	j	80005948 <__printf+0x260>
    80005d20:	00500793          	li	a5,5
    80005d24:	00400c93          	li	s9,4
    80005d28:	db9ff06f          	j	80005ae0 <__printf+0x3f8>
    80005d2c:	00600793          	li	a5,6
    80005d30:	00500c93          	li	s9,5
    80005d34:	dadff06f          	j	80005ae0 <__printf+0x3f8>
    80005d38:	00600793          	li	a5,6
    80005d3c:	00500c93          	li	s9,5
    80005d40:	c09ff06f          	j	80005948 <__printf+0x260>
    80005d44:	00800793          	li	a5,8
    80005d48:	00700c93          	li	s9,7
    80005d4c:	bfdff06f          	j	80005948 <__printf+0x260>
    80005d50:	00100793          	li	a5,1
    80005d54:	d91ff06f          	j	80005ae4 <__printf+0x3fc>
    80005d58:	00100793          	li	a5,1
    80005d5c:	bf1ff06f          	j	8000594c <__printf+0x264>
    80005d60:	00900793          	li	a5,9
    80005d64:	00800c93          	li	s9,8
    80005d68:	be1ff06f          	j	80005948 <__printf+0x260>
    80005d6c:	00001517          	auipc	a0,0x1
    80005d70:	62c50513          	addi	a0,a0,1580 # 80007398 <CONSOLE_STATUS+0x388>
    80005d74:	00000097          	auipc	ra,0x0
    80005d78:	918080e7          	jalr	-1768(ra) # 8000568c <panic>

0000000080005d7c <printfinit>:
    80005d7c:	fe010113          	addi	sp,sp,-32
    80005d80:	00813823          	sd	s0,16(sp)
    80005d84:	00913423          	sd	s1,8(sp)
    80005d88:	00113c23          	sd	ra,24(sp)
    80005d8c:	02010413          	addi	s0,sp,32
    80005d90:	00004497          	auipc	s1,0x4
    80005d94:	3b048493          	addi	s1,s1,944 # 8000a140 <pr>
    80005d98:	00048513          	mv	a0,s1
    80005d9c:	00001597          	auipc	a1,0x1
    80005da0:	60c58593          	addi	a1,a1,1548 # 800073a8 <CONSOLE_STATUS+0x398>
    80005da4:	00000097          	auipc	ra,0x0
    80005da8:	5f4080e7          	jalr	1524(ra) # 80006398 <initlock>
    80005dac:	01813083          	ld	ra,24(sp)
    80005db0:	01013403          	ld	s0,16(sp)
    80005db4:	0004ac23          	sw	zero,24(s1)
    80005db8:	00813483          	ld	s1,8(sp)
    80005dbc:	02010113          	addi	sp,sp,32
    80005dc0:	00008067          	ret

0000000080005dc4 <uartinit>:
    80005dc4:	ff010113          	addi	sp,sp,-16
    80005dc8:	00813423          	sd	s0,8(sp)
    80005dcc:	01010413          	addi	s0,sp,16
    80005dd0:	100007b7          	lui	a5,0x10000
    80005dd4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80005dd8:	f8000713          	li	a4,-128
    80005ddc:	00e781a3          	sb	a4,3(a5)
    80005de0:	00300713          	li	a4,3
    80005de4:	00e78023          	sb	a4,0(a5)
    80005de8:	000780a3          	sb	zero,1(a5)
    80005dec:	00e781a3          	sb	a4,3(a5)
    80005df0:	00700693          	li	a3,7
    80005df4:	00d78123          	sb	a3,2(a5)
    80005df8:	00e780a3          	sb	a4,1(a5)
    80005dfc:	00813403          	ld	s0,8(sp)
    80005e00:	01010113          	addi	sp,sp,16
    80005e04:	00008067          	ret

0000000080005e08 <uartputc>:
    80005e08:	00003797          	auipc	a5,0x3
    80005e0c:	0407a783          	lw	a5,64(a5) # 80008e48 <panicked>
    80005e10:	00078463          	beqz	a5,80005e18 <uartputc+0x10>
    80005e14:	0000006f          	j	80005e14 <uartputc+0xc>
    80005e18:	fd010113          	addi	sp,sp,-48
    80005e1c:	02813023          	sd	s0,32(sp)
    80005e20:	00913c23          	sd	s1,24(sp)
    80005e24:	01213823          	sd	s2,16(sp)
    80005e28:	01313423          	sd	s3,8(sp)
    80005e2c:	02113423          	sd	ra,40(sp)
    80005e30:	03010413          	addi	s0,sp,48
    80005e34:	00003917          	auipc	s2,0x3
    80005e38:	01c90913          	addi	s2,s2,28 # 80008e50 <uart_tx_r>
    80005e3c:	00093783          	ld	a5,0(s2)
    80005e40:	00003497          	auipc	s1,0x3
    80005e44:	01848493          	addi	s1,s1,24 # 80008e58 <uart_tx_w>
    80005e48:	0004b703          	ld	a4,0(s1)
    80005e4c:	02078693          	addi	a3,a5,32
    80005e50:	00050993          	mv	s3,a0
    80005e54:	02e69c63          	bne	a3,a4,80005e8c <uartputc+0x84>
    80005e58:	00001097          	auipc	ra,0x1
    80005e5c:	834080e7          	jalr	-1996(ra) # 8000668c <push_on>
    80005e60:	00093783          	ld	a5,0(s2)
    80005e64:	0004b703          	ld	a4,0(s1)
    80005e68:	02078793          	addi	a5,a5,32
    80005e6c:	00e79463          	bne	a5,a4,80005e74 <uartputc+0x6c>
    80005e70:	0000006f          	j	80005e70 <uartputc+0x68>
    80005e74:	00001097          	auipc	ra,0x1
    80005e78:	88c080e7          	jalr	-1908(ra) # 80006700 <pop_on>
    80005e7c:	00093783          	ld	a5,0(s2)
    80005e80:	0004b703          	ld	a4,0(s1)
    80005e84:	02078693          	addi	a3,a5,32
    80005e88:	fce688e3          	beq	a3,a4,80005e58 <uartputc+0x50>
    80005e8c:	01f77693          	andi	a3,a4,31
    80005e90:	00004597          	auipc	a1,0x4
    80005e94:	2d058593          	addi	a1,a1,720 # 8000a160 <uart_tx_buf>
    80005e98:	00d586b3          	add	a3,a1,a3
    80005e9c:	00170713          	addi	a4,a4,1
    80005ea0:	01368023          	sb	s3,0(a3)
    80005ea4:	00e4b023          	sd	a4,0(s1)
    80005ea8:	10000637          	lui	a2,0x10000
    80005eac:	02f71063          	bne	a4,a5,80005ecc <uartputc+0xc4>
    80005eb0:	0340006f          	j	80005ee4 <uartputc+0xdc>
    80005eb4:	00074703          	lbu	a4,0(a4)
    80005eb8:	00f93023          	sd	a5,0(s2)
    80005ebc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80005ec0:	00093783          	ld	a5,0(s2)
    80005ec4:	0004b703          	ld	a4,0(s1)
    80005ec8:	00f70e63          	beq	a4,a5,80005ee4 <uartputc+0xdc>
    80005ecc:	00564683          	lbu	a3,5(a2)
    80005ed0:	01f7f713          	andi	a4,a5,31
    80005ed4:	00e58733          	add	a4,a1,a4
    80005ed8:	0206f693          	andi	a3,a3,32
    80005edc:	00178793          	addi	a5,a5,1
    80005ee0:	fc069ae3          	bnez	a3,80005eb4 <uartputc+0xac>
    80005ee4:	02813083          	ld	ra,40(sp)
    80005ee8:	02013403          	ld	s0,32(sp)
    80005eec:	01813483          	ld	s1,24(sp)
    80005ef0:	01013903          	ld	s2,16(sp)
    80005ef4:	00813983          	ld	s3,8(sp)
    80005ef8:	03010113          	addi	sp,sp,48
    80005efc:	00008067          	ret

0000000080005f00 <uartputc_sync>:
    80005f00:	ff010113          	addi	sp,sp,-16
    80005f04:	00813423          	sd	s0,8(sp)
    80005f08:	01010413          	addi	s0,sp,16
    80005f0c:	00003717          	auipc	a4,0x3
    80005f10:	f3c72703          	lw	a4,-196(a4) # 80008e48 <panicked>
    80005f14:	02071663          	bnez	a4,80005f40 <uartputc_sync+0x40>
    80005f18:	00050793          	mv	a5,a0
    80005f1c:	100006b7          	lui	a3,0x10000
    80005f20:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80005f24:	02077713          	andi	a4,a4,32
    80005f28:	fe070ce3          	beqz	a4,80005f20 <uartputc_sync+0x20>
    80005f2c:	0ff7f793          	andi	a5,a5,255
    80005f30:	00f68023          	sb	a5,0(a3)
    80005f34:	00813403          	ld	s0,8(sp)
    80005f38:	01010113          	addi	sp,sp,16
    80005f3c:	00008067          	ret
    80005f40:	0000006f          	j	80005f40 <uartputc_sync+0x40>

0000000080005f44 <uartstart>:
    80005f44:	ff010113          	addi	sp,sp,-16
    80005f48:	00813423          	sd	s0,8(sp)
    80005f4c:	01010413          	addi	s0,sp,16
    80005f50:	00003617          	auipc	a2,0x3
    80005f54:	f0060613          	addi	a2,a2,-256 # 80008e50 <uart_tx_r>
    80005f58:	00003517          	auipc	a0,0x3
    80005f5c:	f0050513          	addi	a0,a0,-256 # 80008e58 <uart_tx_w>
    80005f60:	00063783          	ld	a5,0(a2)
    80005f64:	00053703          	ld	a4,0(a0)
    80005f68:	04f70263          	beq	a4,a5,80005fac <uartstart+0x68>
    80005f6c:	100005b7          	lui	a1,0x10000
    80005f70:	00004817          	auipc	a6,0x4
    80005f74:	1f080813          	addi	a6,a6,496 # 8000a160 <uart_tx_buf>
    80005f78:	01c0006f          	j	80005f94 <uartstart+0x50>
    80005f7c:	0006c703          	lbu	a4,0(a3)
    80005f80:	00f63023          	sd	a5,0(a2)
    80005f84:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80005f88:	00063783          	ld	a5,0(a2)
    80005f8c:	00053703          	ld	a4,0(a0)
    80005f90:	00f70e63          	beq	a4,a5,80005fac <uartstart+0x68>
    80005f94:	01f7f713          	andi	a4,a5,31
    80005f98:	00e806b3          	add	a3,a6,a4
    80005f9c:	0055c703          	lbu	a4,5(a1)
    80005fa0:	00178793          	addi	a5,a5,1
    80005fa4:	02077713          	andi	a4,a4,32
    80005fa8:	fc071ae3          	bnez	a4,80005f7c <uartstart+0x38>
    80005fac:	00813403          	ld	s0,8(sp)
    80005fb0:	01010113          	addi	sp,sp,16
    80005fb4:	00008067          	ret

0000000080005fb8 <uartgetc>:
    80005fb8:	ff010113          	addi	sp,sp,-16
    80005fbc:	00813423          	sd	s0,8(sp)
    80005fc0:	01010413          	addi	s0,sp,16
    80005fc4:	10000737          	lui	a4,0x10000
    80005fc8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80005fcc:	0017f793          	andi	a5,a5,1
    80005fd0:	00078c63          	beqz	a5,80005fe8 <uartgetc+0x30>
    80005fd4:	00074503          	lbu	a0,0(a4)
    80005fd8:	0ff57513          	andi	a0,a0,255
    80005fdc:	00813403          	ld	s0,8(sp)
    80005fe0:	01010113          	addi	sp,sp,16
    80005fe4:	00008067          	ret
    80005fe8:	fff00513          	li	a0,-1
    80005fec:	ff1ff06f          	j	80005fdc <uartgetc+0x24>

0000000080005ff0 <uartintr>:
    80005ff0:	100007b7          	lui	a5,0x10000
    80005ff4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80005ff8:	0017f793          	andi	a5,a5,1
    80005ffc:	0a078463          	beqz	a5,800060a4 <uartintr+0xb4>
    80006000:	fe010113          	addi	sp,sp,-32
    80006004:	00813823          	sd	s0,16(sp)
    80006008:	00913423          	sd	s1,8(sp)
    8000600c:	00113c23          	sd	ra,24(sp)
    80006010:	02010413          	addi	s0,sp,32
    80006014:	100004b7          	lui	s1,0x10000
    80006018:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000601c:	0ff57513          	andi	a0,a0,255
    80006020:	fffff097          	auipc	ra,0xfffff
    80006024:	534080e7          	jalr	1332(ra) # 80005554 <consoleintr>
    80006028:	0054c783          	lbu	a5,5(s1)
    8000602c:	0017f793          	andi	a5,a5,1
    80006030:	fe0794e3          	bnez	a5,80006018 <uartintr+0x28>
    80006034:	00003617          	auipc	a2,0x3
    80006038:	e1c60613          	addi	a2,a2,-484 # 80008e50 <uart_tx_r>
    8000603c:	00003517          	auipc	a0,0x3
    80006040:	e1c50513          	addi	a0,a0,-484 # 80008e58 <uart_tx_w>
    80006044:	00063783          	ld	a5,0(a2)
    80006048:	00053703          	ld	a4,0(a0)
    8000604c:	04f70263          	beq	a4,a5,80006090 <uartintr+0xa0>
    80006050:	100005b7          	lui	a1,0x10000
    80006054:	00004817          	auipc	a6,0x4
    80006058:	10c80813          	addi	a6,a6,268 # 8000a160 <uart_tx_buf>
    8000605c:	01c0006f          	j	80006078 <uartintr+0x88>
    80006060:	0006c703          	lbu	a4,0(a3)
    80006064:	00f63023          	sd	a5,0(a2)
    80006068:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000606c:	00063783          	ld	a5,0(a2)
    80006070:	00053703          	ld	a4,0(a0)
    80006074:	00f70e63          	beq	a4,a5,80006090 <uartintr+0xa0>
    80006078:	01f7f713          	andi	a4,a5,31
    8000607c:	00e806b3          	add	a3,a6,a4
    80006080:	0055c703          	lbu	a4,5(a1)
    80006084:	00178793          	addi	a5,a5,1
    80006088:	02077713          	andi	a4,a4,32
    8000608c:	fc071ae3          	bnez	a4,80006060 <uartintr+0x70>
    80006090:	01813083          	ld	ra,24(sp)
    80006094:	01013403          	ld	s0,16(sp)
    80006098:	00813483          	ld	s1,8(sp)
    8000609c:	02010113          	addi	sp,sp,32
    800060a0:	00008067          	ret
    800060a4:	00003617          	auipc	a2,0x3
    800060a8:	dac60613          	addi	a2,a2,-596 # 80008e50 <uart_tx_r>
    800060ac:	00003517          	auipc	a0,0x3
    800060b0:	dac50513          	addi	a0,a0,-596 # 80008e58 <uart_tx_w>
    800060b4:	00063783          	ld	a5,0(a2)
    800060b8:	00053703          	ld	a4,0(a0)
    800060bc:	04f70263          	beq	a4,a5,80006100 <uartintr+0x110>
    800060c0:	100005b7          	lui	a1,0x10000
    800060c4:	00004817          	auipc	a6,0x4
    800060c8:	09c80813          	addi	a6,a6,156 # 8000a160 <uart_tx_buf>
    800060cc:	01c0006f          	j	800060e8 <uartintr+0xf8>
    800060d0:	0006c703          	lbu	a4,0(a3)
    800060d4:	00f63023          	sd	a5,0(a2)
    800060d8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800060dc:	00063783          	ld	a5,0(a2)
    800060e0:	00053703          	ld	a4,0(a0)
    800060e4:	02f70063          	beq	a4,a5,80006104 <uartintr+0x114>
    800060e8:	01f7f713          	andi	a4,a5,31
    800060ec:	00e806b3          	add	a3,a6,a4
    800060f0:	0055c703          	lbu	a4,5(a1)
    800060f4:	00178793          	addi	a5,a5,1
    800060f8:	02077713          	andi	a4,a4,32
    800060fc:	fc071ae3          	bnez	a4,800060d0 <uartintr+0xe0>
    80006100:	00008067          	ret
    80006104:	00008067          	ret

0000000080006108 <kinit>:
    80006108:	fc010113          	addi	sp,sp,-64
    8000610c:	02913423          	sd	s1,40(sp)
    80006110:	fffff7b7          	lui	a5,0xfffff
    80006114:	00005497          	auipc	s1,0x5
    80006118:	06b48493          	addi	s1,s1,107 # 8000b17f <end+0xfff>
    8000611c:	02813823          	sd	s0,48(sp)
    80006120:	01313c23          	sd	s3,24(sp)
    80006124:	00f4f4b3          	and	s1,s1,a5
    80006128:	02113c23          	sd	ra,56(sp)
    8000612c:	03213023          	sd	s2,32(sp)
    80006130:	01413823          	sd	s4,16(sp)
    80006134:	01513423          	sd	s5,8(sp)
    80006138:	04010413          	addi	s0,sp,64
    8000613c:	000017b7          	lui	a5,0x1
    80006140:	01100993          	li	s3,17
    80006144:	00f487b3          	add	a5,s1,a5
    80006148:	01b99993          	slli	s3,s3,0x1b
    8000614c:	06f9e063          	bltu	s3,a5,800061ac <kinit+0xa4>
    80006150:	00004a97          	auipc	s5,0x4
    80006154:	030a8a93          	addi	s5,s5,48 # 8000a180 <end>
    80006158:	0754ec63          	bltu	s1,s5,800061d0 <kinit+0xc8>
    8000615c:	0734fa63          	bgeu	s1,s3,800061d0 <kinit+0xc8>
    80006160:	00088a37          	lui	s4,0x88
    80006164:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80006168:	00003917          	auipc	s2,0x3
    8000616c:	cf890913          	addi	s2,s2,-776 # 80008e60 <kmem>
    80006170:	00ca1a13          	slli	s4,s4,0xc
    80006174:	0140006f          	j	80006188 <kinit+0x80>
    80006178:	000017b7          	lui	a5,0x1
    8000617c:	00f484b3          	add	s1,s1,a5
    80006180:	0554e863          	bltu	s1,s5,800061d0 <kinit+0xc8>
    80006184:	0534f663          	bgeu	s1,s3,800061d0 <kinit+0xc8>
    80006188:	00001637          	lui	a2,0x1
    8000618c:	00100593          	li	a1,1
    80006190:	00048513          	mv	a0,s1
    80006194:	00000097          	auipc	ra,0x0
    80006198:	5e4080e7          	jalr	1508(ra) # 80006778 <__memset>
    8000619c:	00093783          	ld	a5,0(s2)
    800061a0:	00f4b023          	sd	a5,0(s1)
    800061a4:	00993023          	sd	s1,0(s2)
    800061a8:	fd4498e3          	bne	s1,s4,80006178 <kinit+0x70>
    800061ac:	03813083          	ld	ra,56(sp)
    800061b0:	03013403          	ld	s0,48(sp)
    800061b4:	02813483          	ld	s1,40(sp)
    800061b8:	02013903          	ld	s2,32(sp)
    800061bc:	01813983          	ld	s3,24(sp)
    800061c0:	01013a03          	ld	s4,16(sp)
    800061c4:	00813a83          	ld	s5,8(sp)
    800061c8:	04010113          	addi	sp,sp,64
    800061cc:	00008067          	ret
    800061d0:	00001517          	auipc	a0,0x1
    800061d4:	1f850513          	addi	a0,a0,504 # 800073c8 <digits+0x18>
    800061d8:	fffff097          	auipc	ra,0xfffff
    800061dc:	4b4080e7          	jalr	1204(ra) # 8000568c <panic>

00000000800061e0 <freerange>:
    800061e0:	fc010113          	addi	sp,sp,-64
    800061e4:	000017b7          	lui	a5,0x1
    800061e8:	02913423          	sd	s1,40(sp)
    800061ec:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800061f0:	009504b3          	add	s1,a0,s1
    800061f4:	fffff537          	lui	a0,0xfffff
    800061f8:	02813823          	sd	s0,48(sp)
    800061fc:	02113c23          	sd	ra,56(sp)
    80006200:	03213023          	sd	s2,32(sp)
    80006204:	01313c23          	sd	s3,24(sp)
    80006208:	01413823          	sd	s4,16(sp)
    8000620c:	01513423          	sd	s5,8(sp)
    80006210:	01613023          	sd	s6,0(sp)
    80006214:	04010413          	addi	s0,sp,64
    80006218:	00a4f4b3          	and	s1,s1,a0
    8000621c:	00f487b3          	add	a5,s1,a5
    80006220:	06f5e463          	bltu	a1,a5,80006288 <freerange+0xa8>
    80006224:	00004a97          	auipc	s5,0x4
    80006228:	f5ca8a93          	addi	s5,s5,-164 # 8000a180 <end>
    8000622c:	0954e263          	bltu	s1,s5,800062b0 <freerange+0xd0>
    80006230:	01100993          	li	s3,17
    80006234:	01b99993          	slli	s3,s3,0x1b
    80006238:	0734fc63          	bgeu	s1,s3,800062b0 <freerange+0xd0>
    8000623c:	00058a13          	mv	s4,a1
    80006240:	00003917          	auipc	s2,0x3
    80006244:	c2090913          	addi	s2,s2,-992 # 80008e60 <kmem>
    80006248:	00002b37          	lui	s6,0x2
    8000624c:	0140006f          	j	80006260 <freerange+0x80>
    80006250:	000017b7          	lui	a5,0x1
    80006254:	00f484b3          	add	s1,s1,a5
    80006258:	0554ec63          	bltu	s1,s5,800062b0 <freerange+0xd0>
    8000625c:	0534fa63          	bgeu	s1,s3,800062b0 <freerange+0xd0>
    80006260:	00001637          	lui	a2,0x1
    80006264:	00100593          	li	a1,1
    80006268:	00048513          	mv	a0,s1
    8000626c:	00000097          	auipc	ra,0x0
    80006270:	50c080e7          	jalr	1292(ra) # 80006778 <__memset>
    80006274:	00093703          	ld	a4,0(s2)
    80006278:	016487b3          	add	a5,s1,s6
    8000627c:	00e4b023          	sd	a4,0(s1)
    80006280:	00993023          	sd	s1,0(s2)
    80006284:	fcfa76e3          	bgeu	s4,a5,80006250 <freerange+0x70>
    80006288:	03813083          	ld	ra,56(sp)
    8000628c:	03013403          	ld	s0,48(sp)
    80006290:	02813483          	ld	s1,40(sp)
    80006294:	02013903          	ld	s2,32(sp)
    80006298:	01813983          	ld	s3,24(sp)
    8000629c:	01013a03          	ld	s4,16(sp)
    800062a0:	00813a83          	ld	s5,8(sp)
    800062a4:	00013b03          	ld	s6,0(sp)
    800062a8:	04010113          	addi	sp,sp,64
    800062ac:	00008067          	ret
    800062b0:	00001517          	auipc	a0,0x1
    800062b4:	11850513          	addi	a0,a0,280 # 800073c8 <digits+0x18>
    800062b8:	fffff097          	auipc	ra,0xfffff
    800062bc:	3d4080e7          	jalr	980(ra) # 8000568c <panic>

00000000800062c0 <kfree>:
    800062c0:	fe010113          	addi	sp,sp,-32
    800062c4:	00813823          	sd	s0,16(sp)
    800062c8:	00113c23          	sd	ra,24(sp)
    800062cc:	00913423          	sd	s1,8(sp)
    800062d0:	02010413          	addi	s0,sp,32
    800062d4:	03451793          	slli	a5,a0,0x34
    800062d8:	04079c63          	bnez	a5,80006330 <kfree+0x70>
    800062dc:	00004797          	auipc	a5,0x4
    800062e0:	ea478793          	addi	a5,a5,-348 # 8000a180 <end>
    800062e4:	00050493          	mv	s1,a0
    800062e8:	04f56463          	bltu	a0,a5,80006330 <kfree+0x70>
    800062ec:	01100793          	li	a5,17
    800062f0:	01b79793          	slli	a5,a5,0x1b
    800062f4:	02f57e63          	bgeu	a0,a5,80006330 <kfree+0x70>
    800062f8:	00001637          	lui	a2,0x1
    800062fc:	00100593          	li	a1,1
    80006300:	00000097          	auipc	ra,0x0
    80006304:	478080e7          	jalr	1144(ra) # 80006778 <__memset>
    80006308:	00003797          	auipc	a5,0x3
    8000630c:	b5878793          	addi	a5,a5,-1192 # 80008e60 <kmem>
    80006310:	0007b703          	ld	a4,0(a5)
    80006314:	01813083          	ld	ra,24(sp)
    80006318:	01013403          	ld	s0,16(sp)
    8000631c:	00e4b023          	sd	a4,0(s1)
    80006320:	0097b023          	sd	s1,0(a5)
    80006324:	00813483          	ld	s1,8(sp)
    80006328:	02010113          	addi	sp,sp,32
    8000632c:	00008067          	ret
    80006330:	00001517          	auipc	a0,0x1
    80006334:	09850513          	addi	a0,a0,152 # 800073c8 <digits+0x18>
    80006338:	fffff097          	auipc	ra,0xfffff
    8000633c:	354080e7          	jalr	852(ra) # 8000568c <panic>

0000000080006340 <kalloc>:
    80006340:	fe010113          	addi	sp,sp,-32
    80006344:	00813823          	sd	s0,16(sp)
    80006348:	00913423          	sd	s1,8(sp)
    8000634c:	00113c23          	sd	ra,24(sp)
    80006350:	02010413          	addi	s0,sp,32
    80006354:	00003797          	auipc	a5,0x3
    80006358:	b0c78793          	addi	a5,a5,-1268 # 80008e60 <kmem>
    8000635c:	0007b483          	ld	s1,0(a5)
    80006360:	02048063          	beqz	s1,80006380 <kalloc+0x40>
    80006364:	0004b703          	ld	a4,0(s1)
    80006368:	00001637          	lui	a2,0x1
    8000636c:	00500593          	li	a1,5
    80006370:	00048513          	mv	a0,s1
    80006374:	00e7b023          	sd	a4,0(a5)
    80006378:	00000097          	auipc	ra,0x0
    8000637c:	400080e7          	jalr	1024(ra) # 80006778 <__memset>
    80006380:	01813083          	ld	ra,24(sp)
    80006384:	01013403          	ld	s0,16(sp)
    80006388:	00048513          	mv	a0,s1
    8000638c:	00813483          	ld	s1,8(sp)
    80006390:	02010113          	addi	sp,sp,32
    80006394:	00008067          	ret

0000000080006398 <initlock>:
    80006398:	ff010113          	addi	sp,sp,-16
    8000639c:	00813423          	sd	s0,8(sp)
    800063a0:	01010413          	addi	s0,sp,16
    800063a4:	00813403          	ld	s0,8(sp)
    800063a8:	00b53423          	sd	a1,8(a0)
    800063ac:	00052023          	sw	zero,0(a0)
    800063b0:	00053823          	sd	zero,16(a0)
    800063b4:	01010113          	addi	sp,sp,16
    800063b8:	00008067          	ret

00000000800063bc <acquire>:
    800063bc:	fe010113          	addi	sp,sp,-32
    800063c0:	00813823          	sd	s0,16(sp)
    800063c4:	00913423          	sd	s1,8(sp)
    800063c8:	00113c23          	sd	ra,24(sp)
    800063cc:	01213023          	sd	s2,0(sp)
    800063d0:	02010413          	addi	s0,sp,32
    800063d4:	00050493          	mv	s1,a0
    800063d8:	10002973          	csrr	s2,sstatus
    800063dc:	100027f3          	csrr	a5,sstatus
    800063e0:	ffd7f793          	andi	a5,a5,-3
    800063e4:	10079073          	csrw	sstatus,a5
    800063e8:	fffff097          	auipc	ra,0xfffff
    800063ec:	8e4080e7          	jalr	-1820(ra) # 80004ccc <mycpu>
    800063f0:	07852783          	lw	a5,120(a0)
    800063f4:	06078e63          	beqz	a5,80006470 <acquire+0xb4>
    800063f8:	fffff097          	auipc	ra,0xfffff
    800063fc:	8d4080e7          	jalr	-1836(ra) # 80004ccc <mycpu>
    80006400:	07852783          	lw	a5,120(a0)
    80006404:	0004a703          	lw	a4,0(s1)
    80006408:	0017879b          	addiw	a5,a5,1
    8000640c:	06f52c23          	sw	a5,120(a0)
    80006410:	04071063          	bnez	a4,80006450 <acquire+0x94>
    80006414:	00100713          	li	a4,1
    80006418:	00070793          	mv	a5,a4
    8000641c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80006420:	0007879b          	sext.w	a5,a5
    80006424:	fe079ae3          	bnez	a5,80006418 <acquire+0x5c>
    80006428:	0ff0000f          	fence
    8000642c:	fffff097          	auipc	ra,0xfffff
    80006430:	8a0080e7          	jalr	-1888(ra) # 80004ccc <mycpu>
    80006434:	01813083          	ld	ra,24(sp)
    80006438:	01013403          	ld	s0,16(sp)
    8000643c:	00a4b823          	sd	a0,16(s1)
    80006440:	00013903          	ld	s2,0(sp)
    80006444:	00813483          	ld	s1,8(sp)
    80006448:	02010113          	addi	sp,sp,32
    8000644c:	00008067          	ret
    80006450:	0104b903          	ld	s2,16(s1)
    80006454:	fffff097          	auipc	ra,0xfffff
    80006458:	878080e7          	jalr	-1928(ra) # 80004ccc <mycpu>
    8000645c:	faa91ce3          	bne	s2,a0,80006414 <acquire+0x58>
    80006460:	00001517          	auipc	a0,0x1
    80006464:	f7050513          	addi	a0,a0,-144 # 800073d0 <digits+0x20>
    80006468:	fffff097          	auipc	ra,0xfffff
    8000646c:	224080e7          	jalr	548(ra) # 8000568c <panic>
    80006470:	00195913          	srli	s2,s2,0x1
    80006474:	fffff097          	auipc	ra,0xfffff
    80006478:	858080e7          	jalr	-1960(ra) # 80004ccc <mycpu>
    8000647c:	00197913          	andi	s2,s2,1
    80006480:	07252e23          	sw	s2,124(a0)
    80006484:	f75ff06f          	j	800063f8 <acquire+0x3c>

0000000080006488 <release>:
    80006488:	fe010113          	addi	sp,sp,-32
    8000648c:	00813823          	sd	s0,16(sp)
    80006490:	00113c23          	sd	ra,24(sp)
    80006494:	00913423          	sd	s1,8(sp)
    80006498:	01213023          	sd	s2,0(sp)
    8000649c:	02010413          	addi	s0,sp,32
    800064a0:	00052783          	lw	a5,0(a0)
    800064a4:	00079a63          	bnez	a5,800064b8 <release+0x30>
    800064a8:	00001517          	auipc	a0,0x1
    800064ac:	f3050513          	addi	a0,a0,-208 # 800073d8 <digits+0x28>
    800064b0:	fffff097          	auipc	ra,0xfffff
    800064b4:	1dc080e7          	jalr	476(ra) # 8000568c <panic>
    800064b8:	01053903          	ld	s2,16(a0)
    800064bc:	00050493          	mv	s1,a0
    800064c0:	fffff097          	auipc	ra,0xfffff
    800064c4:	80c080e7          	jalr	-2036(ra) # 80004ccc <mycpu>
    800064c8:	fea910e3          	bne	s2,a0,800064a8 <release+0x20>
    800064cc:	0004b823          	sd	zero,16(s1)
    800064d0:	0ff0000f          	fence
    800064d4:	0f50000f          	fence	iorw,ow
    800064d8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800064dc:	ffffe097          	auipc	ra,0xffffe
    800064e0:	7f0080e7          	jalr	2032(ra) # 80004ccc <mycpu>
    800064e4:	100027f3          	csrr	a5,sstatus
    800064e8:	0027f793          	andi	a5,a5,2
    800064ec:	04079a63          	bnez	a5,80006540 <release+0xb8>
    800064f0:	07852783          	lw	a5,120(a0)
    800064f4:	02f05e63          	blez	a5,80006530 <release+0xa8>
    800064f8:	fff7871b          	addiw	a4,a5,-1
    800064fc:	06e52c23          	sw	a4,120(a0)
    80006500:	00071c63          	bnez	a4,80006518 <release+0x90>
    80006504:	07c52783          	lw	a5,124(a0)
    80006508:	00078863          	beqz	a5,80006518 <release+0x90>
    8000650c:	100027f3          	csrr	a5,sstatus
    80006510:	0027e793          	ori	a5,a5,2
    80006514:	10079073          	csrw	sstatus,a5
    80006518:	01813083          	ld	ra,24(sp)
    8000651c:	01013403          	ld	s0,16(sp)
    80006520:	00813483          	ld	s1,8(sp)
    80006524:	00013903          	ld	s2,0(sp)
    80006528:	02010113          	addi	sp,sp,32
    8000652c:	00008067          	ret
    80006530:	00001517          	auipc	a0,0x1
    80006534:	ec850513          	addi	a0,a0,-312 # 800073f8 <digits+0x48>
    80006538:	fffff097          	auipc	ra,0xfffff
    8000653c:	154080e7          	jalr	340(ra) # 8000568c <panic>
    80006540:	00001517          	auipc	a0,0x1
    80006544:	ea050513          	addi	a0,a0,-352 # 800073e0 <digits+0x30>
    80006548:	fffff097          	auipc	ra,0xfffff
    8000654c:	144080e7          	jalr	324(ra) # 8000568c <panic>

0000000080006550 <holding>:
    80006550:	00052783          	lw	a5,0(a0)
    80006554:	00079663          	bnez	a5,80006560 <holding+0x10>
    80006558:	00000513          	li	a0,0
    8000655c:	00008067          	ret
    80006560:	fe010113          	addi	sp,sp,-32
    80006564:	00813823          	sd	s0,16(sp)
    80006568:	00913423          	sd	s1,8(sp)
    8000656c:	00113c23          	sd	ra,24(sp)
    80006570:	02010413          	addi	s0,sp,32
    80006574:	01053483          	ld	s1,16(a0)
    80006578:	ffffe097          	auipc	ra,0xffffe
    8000657c:	754080e7          	jalr	1876(ra) # 80004ccc <mycpu>
    80006580:	01813083          	ld	ra,24(sp)
    80006584:	01013403          	ld	s0,16(sp)
    80006588:	40a48533          	sub	a0,s1,a0
    8000658c:	00153513          	seqz	a0,a0
    80006590:	00813483          	ld	s1,8(sp)
    80006594:	02010113          	addi	sp,sp,32
    80006598:	00008067          	ret

000000008000659c <push_off>:
    8000659c:	fe010113          	addi	sp,sp,-32
    800065a0:	00813823          	sd	s0,16(sp)
    800065a4:	00113c23          	sd	ra,24(sp)
    800065a8:	00913423          	sd	s1,8(sp)
    800065ac:	02010413          	addi	s0,sp,32
    800065b0:	100024f3          	csrr	s1,sstatus
    800065b4:	100027f3          	csrr	a5,sstatus
    800065b8:	ffd7f793          	andi	a5,a5,-3
    800065bc:	10079073          	csrw	sstatus,a5
    800065c0:	ffffe097          	auipc	ra,0xffffe
    800065c4:	70c080e7          	jalr	1804(ra) # 80004ccc <mycpu>
    800065c8:	07852783          	lw	a5,120(a0)
    800065cc:	02078663          	beqz	a5,800065f8 <push_off+0x5c>
    800065d0:	ffffe097          	auipc	ra,0xffffe
    800065d4:	6fc080e7          	jalr	1788(ra) # 80004ccc <mycpu>
    800065d8:	07852783          	lw	a5,120(a0)
    800065dc:	01813083          	ld	ra,24(sp)
    800065e0:	01013403          	ld	s0,16(sp)
    800065e4:	0017879b          	addiw	a5,a5,1
    800065e8:	06f52c23          	sw	a5,120(a0)
    800065ec:	00813483          	ld	s1,8(sp)
    800065f0:	02010113          	addi	sp,sp,32
    800065f4:	00008067          	ret
    800065f8:	0014d493          	srli	s1,s1,0x1
    800065fc:	ffffe097          	auipc	ra,0xffffe
    80006600:	6d0080e7          	jalr	1744(ra) # 80004ccc <mycpu>
    80006604:	0014f493          	andi	s1,s1,1
    80006608:	06952e23          	sw	s1,124(a0)
    8000660c:	fc5ff06f          	j	800065d0 <push_off+0x34>

0000000080006610 <pop_off>:
    80006610:	ff010113          	addi	sp,sp,-16
    80006614:	00813023          	sd	s0,0(sp)
    80006618:	00113423          	sd	ra,8(sp)
    8000661c:	01010413          	addi	s0,sp,16
    80006620:	ffffe097          	auipc	ra,0xffffe
    80006624:	6ac080e7          	jalr	1708(ra) # 80004ccc <mycpu>
    80006628:	100027f3          	csrr	a5,sstatus
    8000662c:	0027f793          	andi	a5,a5,2
    80006630:	04079663          	bnez	a5,8000667c <pop_off+0x6c>
    80006634:	07852783          	lw	a5,120(a0)
    80006638:	02f05a63          	blez	a5,8000666c <pop_off+0x5c>
    8000663c:	fff7871b          	addiw	a4,a5,-1
    80006640:	06e52c23          	sw	a4,120(a0)
    80006644:	00071c63          	bnez	a4,8000665c <pop_off+0x4c>
    80006648:	07c52783          	lw	a5,124(a0)
    8000664c:	00078863          	beqz	a5,8000665c <pop_off+0x4c>
    80006650:	100027f3          	csrr	a5,sstatus
    80006654:	0027e793          	ori	a5,a5,2
    80006658:	10079073          	csrw	sstatus,a5
    8000665c:	00813083          	ld	ra,8(sp)
    80006660:	00013403          	ld	s0,0(sp)
    80006664:	01010113          	addi	sp,sp,16
    80006668:	00008067          	ret
    8000666c:	00001517          	auipc	a0,0x1
    80006670:	d8c50513          	addi	a0,a0,-628 # 800073f8 <digits+0x48>
    80006674:	fffff097          	auipc	ra,0xfffff
    80006678:	018080e7          	jalr	24(ra) # 8000568c <panic>
    8000667c:	00001517          	auipc	a0,0x1
    80006680:	d6450513          	addi	a0,a0,-668 # 800073e0 <digits+0x30>
    80006684:	fffff097          	auipc	ra,0xfffff
    80006688:	008080e7          	jalr	8(ra) # 8000568c <panic>

000000008000668c <push_on>:
    8000668c:	fe010113          	addi	sp,sp,-32
    80006690:	00813823          	sd	s0,16(sp)
    80006694:	00113c23          	sd	ra,24(sp)
    80006698:	00913423          	sd	s1,8(sp)
    8000669c:	02010413          	addi	s0,sp,32
    800066a0:	100024f3          	csrr	s1,sstatus
    800066a4:	100027f3          	csrr	a5,sstatus
    800066a8:	0027e793          	ori	a5,a5,2
    800066ac:	10079073          	csrw	sstatus,a5
    800066b0:	ffffe097          	auipc	ra,0xffffe
    800066b4:	61c080e7          	jalr	1564(ra) # 80004ccc <mycpu>
    800066b8:	07852783          	lw	a5,120(a0)
    800066bc:	02078663          	beqz	a5,800066e8 <push_on+0x5c>
    800066c0:	ffffe097          	auipc	ra,0xffffe
    800066c4:	60c080e7          	jalr	1548(ra) # 80004ccc <mycpu>
    800066c8:	07852783          	lw	a5,120(a0)
    800066cc:	01813083          	ld	ra,24(sp)
    800066d0:	01013403          	ld	s0,16(sp)
    800066d4:	0017879b          	addiw	a5,a5,1
    800066d8:	06f52c23          	sw	a5,120(a0)
    800066dc:	00813483          	ld	s1,8(sp)
    800066e0:	02010113          	addi	sp,sp,32
    800066e4:	00008067          	ret
    800066e8:	0014d493          	srli	s1,s1,0x1
    800066ec:	ffffe097          	auipc	ra,0xffffe
    800066f0:	5e0080e7          	jalr	1504(ra) # 80004ccc <mycpu>
    800066f4:	0014f493          	andi	s1,s1,1
    800066f8:	06952e23          	sw	s1,124(a0)
    800066fc:	fc5ff06f          	j	800066c0 <push_on+0x34>

0000000080006700 <pop_on>:
    80006700:	ff010113          	addi	sp,sp,-16
    80006704:	00813023          	sd	s0,0(sp)
    80006708:	00113423          	sd	ra,8(sp)
    8000670c:	01010413          	addi	s0,sp,16
    80006710:	ffffe097          	auipc	ra,0xffffe
    80006714:	5bc080e7          	jalr	1468(ra) # 80004ccc <mycpu>
    80006718:	100027f3          	csrr	a5,sstatus
    8000671c:	0027f793          	andi	a5,a5,2
    80006720:	04078463          	beqz	a5,80006768 <pop_on+0x68>
    80006724:	07852783          	lw	a5,120(a0)
    80006728:	02f05863          	blez	a5,80006758 <pop_on+0x58>
    8000672c:	fff7879b          	addiw	a5,a5,-1
    80006730:	06f52c23          	sw	a5,120(a0)
    80006734:	07853783          	ld	a5,120(a0)
    80006738:	00079863          	bnez	a5,80006748 <pop_on+0x48>
    8000673c:	100027f3          	csrr	a5,sstatus
    80006740:	ffd7f793          	andi	a5,a5,-3
    80006744:	10079073          	csrw	sstatus,a5
    80006748:	00813083          	ld	ra,8(sp)
    8000674c:	00013403          	ld	s0,0(sp)
    80006750:	01010113          	addi	sp,sp,16
    80006754:	00008067          	ret
    80006758:	00001517          	auipc	a0,0x1
    8000675c:	cc850513          	addi	a0,a0,-824 # 80007420 <digits+0x70>
    80006760:	fffff097          	auipc	ra,0xfffff
    80006764:	f2c080e7          	jalr	-212(ra) # 8000568c <panic>
    80006768:	00001517          	auipc	a0,0x1
    8000676c:	c9850513          	addi	a0,a0,-872 # 80007400 <digits+0x50>
    80006770:	fffff097          	auipc	ra,0xfffff
    80006774:	f1c080e7          	jalr	-228(ra) # 8000568c <panic>

0000000080006778 <__memset>:
    80006778:	ff010113          	addi	sp,sp,-16
    8000677c:	00813423          	sd	s0,8(sp)
    80006780:	01010413          	addi	s0,sp,16
    80006784:	1a060e63          	beqz	a2,80006940 <__memset+0x1c8>
    80006788:	40a007b3          	neg	a5,a0
    8000678c:	0077f793          	andi	a5,a5,7
    80006790:	00778693          	addi	a3,a5,7
    80006794:	00b00813          	li	a6,11
    80006798:	0ff5f593          	andi	a1,a1,255
    8000679c:	fff6071b          	addiw	a4,a2,-1
    800067a0:	1b06e663          	bltu	a3,a6,8000694c <__memset+0x1d4>
    800067a4:	1cd76463          	bltu	a4,a3,8000696c <__memset+0x1f4>
    800067a8:	1a078e63          	beqz	a5,80006964 <__memset+0x1ec>
    800067ac:	00b50023          	sb	a1,0(a0)
    800067b0:	00100713          	li	a4,1
    800067b4:	1ae78463          	beq	a5,a4,8000695c <__memset+0x1e4>
    800067b8:	00b500a3          	sb	a1,1(a0)
    800067bc:	00200713          	li	a4,2
    800067c0:	1ae78a63          	beq	a5,a4,80006974 <__memset+0x1fc>
    800067c4:	00b50123          	sb	a1,2(a0)
    800067c8:	00300713          	li	a4,3
    800067cc:	18e78463          	beq	a5,a4,80006954 <__memset+0x1dc>
    800067d0:	00b501a3          	sb	a1,3(a0)
    800067d4:	00400713          	li	a4,4
    800067d8:	1ae78263          	beq	a5,a4,8000697c <__memset+0x204>
    800067dc:	00b50223          	sb	a1,4(a0)
    800067e0:	00500713          	li	a4,5
    800067e4:	1ae78063          	beq	a5,a4,80006984 <__memset+0x20c>
    800067e8:	00b502a3          	sb	a1,5(a0)
    800067ec:	00700713          	li	a4,7
    800067f0:	18e79e63          	bne	a5,a4,8000698c <__memset+0x214>
    800067f4:	00b50323          	sb	a1,6(a0)
    800067f8:	00700e93          	li	t4,7
    800067fc:	00859713          	slli	a4,a1,0x8
    80006800:	00e5e733          	or	a4,a1,a4
    80006804:	01059e13          	slli	t3,a1,0x10
    80006808:	01c76e33          	or	t3,a4,t3
    8000680c:	01859313          	slli	t1,a1,0x18
    80006810:	006e6333          	or	t1,t3,t1
    80006814:	02059893          	slli	a7,a1,0x20
    80006818:	40f60e3b          	subw	t3,a2,a5
    8000681c:	011368b3          	or	a7,t1,a7
    80006820:	02859813          	slli	a6,a1,0x28
    80006824:	0108e833          	or	a6,a7,a6
    80006828:	03059693          	slli	a3,a1,0x30
    8000682c:	003e589b          	srliw	a7,t3,0x3
    80006830:	00d866b3          	or	a3,a6,a3
    80006834:	03859713          	slli	a4,a1,0x38
    80006838:	00389813          	slli	a6,a7,0x3
    8000683c:	00f507b3          	add	a5,a0,a5
    80006840:	00e6e733          	or	a4,a3,a4
    80006844:	000e089b          	sext.w	a7,t3
    80006848:	00f806b3          	add	a3,a6,a5
    8000684c:	00e7b023          	sd	a4,0(a5)
    80006850:	00878793          	addi	a5,a5,8
    80006854:	fed79ce3          	bne	a5,a3,8000684c <__memset+0xd4>
    80006858:	ff8e7793          	andi	a5,t3,-8
    8000685c:	0007871b          	sext.w	a4,a5
    80006860:	01d787bb          	addw	a5,a5,t4
    80006864:	0ce88e63          	beq	a7,a4,80006940 <__memset+0x1c8>
    80006868:	00f50733          	add	a4,a0,a5
    8000686c:	00b70023          	sb	a1,0(a4)
    80006870:	0017871b          	addiw	a4,a5,1
    80006874:	0cc77663          	bgeu	a4,a2,80006940 <__memset+0x1c8>
    80006878:	00e50733          	add	a4,a0,a4
    8000687c:	00b70023          	sb	a1,0(a4)
    80006880:	0027871b          	addiw	a4,a5,2
    80006884:	0ac77e63          	bgeu	a4,a2,80006940 <__memset+0x1c8>
    80006888:	00e50733          	add	a4,a0,a4
    8000688c:	00b70023          	sb	a1,0(a4)
    80006890:	0037871b          	addiw	a4,a5,3
    80006894:	0ac77663          	bgeu	a4,a2,80006940 <__memset+0x1c8>
    80006898:	00e50733          	add	a4,a0,a4
    8000689c:	00b70023          	sb	a1,0(a4)
    800068a0:	0047871b          	addiw	a4,a5,4
    800068a4:	08c77e63          	bgeu	a4,a2,80006940 <__memset+0x1c8>
    800068a8:	00e50733          	add	a4,a0,a4
    800068ac:	00b70023          	sb	a1,0(a4)
    800068b0:	0057871b          	addiw	a4,a5,5
    800068b4:	08c77663          	bgeu	a4,a2,80006940 <__memset+0x1c8>
    800068b8:	00e50733          	add	a4,a0,a4
    800068bc:	00b70023          	sb	a1,0(a4)
    800068c0:	0067871b          	addiw	a4,a5,6
    800068c4:	06c77e63          	bgeu	a4,a2,80006940 <__memset+0x1c8>
    800068c8:	00e50733          	add	a4,a0,a4
    800068cc:	00b70023          	sb	a1,0(a4)
    800068d0:	0077871b          	addiw	a4,a5,7
    800068d4:	06c77663          	bgeu	a4,a2,80006940 <__memset+0x1c8>
    800068d8:	00e50733          	add	a4,a0,a4
    800068dc:	00b70023          	sb	a1,0(a4)
    800068e0:	0087871b          	addiw	a4,a5,8
    800068e4:	04c77e63          	bgeu	a4,a2,80006940 <__memset+0x1c8>
    800068e8:	00e50733          	add	a4,a0,a4
    800068ec:	00b70023          	sb	a1,0(a4)
    800068f0:	0097871b          	addiw	a4,a5,9
    800068f4:	04c77663          	bgeu	a4,a2,80006940 <__memset+0x1c8>
    800068f8:	00e50733          	add	a4,a0,a4
    800068fc:	00b70023          	sb	a1,0(a4)
    80006900:	00a7871b          	addiw	a4,a5,10
    80006904:	02c77e63          	bgeu	a4,a2,80006940 <__memset+0x1c8>
    80006908:	00e50733          	add	a4,a0,a4
    8000690c:	00b70023          	sb	a1,0(a4)
    80006910:	00b7871b          	addiw	a4,a5,11
    80006914:	02c77663          	bgeu	a4,a2,80006940 <__memset+0x1c8>
    80006918:	00e50733          	add	a4,a0,a4
    8000691c:	00b70023          	sb	a1,0(a4)
    80006920:	00c7871b          	addiw	a4,a5,12
    80006924:	00c77e63          	bgeu	a4,a2,80006940 <__memset+0x1c8>
    80006928:	00e50733          	add	a4,a0,a4
    8000692c:	00b70023          	sb	a1,0(a4)
    80006930:	00d7879b          	addiw	a5,a5,13
    80006934:	00c7f663          	bgeu	a5,a2,80006940 <__memset+0x1c8>
    80006938:	00f507b3          	add	a5,a0,a5
    8000693c:	00b78023          	sb	a1,0(a5)
    80006940:	00813403          	ld	s0,8(sp)
    80006944:	01010113          	addi	sp,sp,16
    80006948:	00008067          	ret
    8000694c:	00b00693          	li	a3,11
    80006950:	e55ff06f          	j	800067a4 <__memset+0x2c>
    80006954:	00300e93          	li	t4,3
    80006958:	ea5ff06f          	j	800067fc <__memset+0x84>
    8000695c:	00100e93          	li	t4,1
    80006960:	e9dff06f          	j	800067fc <__memset+0x84>
    80006964:	00000e93          	li	t4,0
    80006968:	e95ff06f          	j	800067fc <__memset+0x84>
    8000696c:	00000793          	li	a5,0
    80006970:	ef9ff06f          	j	80006868 <__memset+0xf0>
    80006974:	00200e93          	li	t4,2
    80006978:	e85ff06f          	j	800067fc <__memset+0x84>
    8000697c:	00400e93          	li	t4,4
    80006980:	e7dff06f          	j	800067fc <__memset+0x84>
    80006984:	00500e93          	li	t4,5
    80006988:	e75ff06f          	j	800067fc <__memset+0x84>
    8000698c:	00600e93          	li	t4,6
    80006990:	e6dff06f          	j	800067fc <__memset+0x84>

0000000080006994 <__memmove>:
    80006994:	ff010113          	addi	sp,sp,-16
    80006998:	00813423          	sd	s0,8(sp)
    8000699c:	01010413          	addi	s0,sp,16
    800069a0:	0e060863          	beqz	a2,80006a90 <__memmove+0xfc>
    800069a4:	fff6069b          	addiw	a3,a2,-1
    800069a8:	0006881b          	sext.w	a6,a3
    800069ac:	0ea5e863          	bltu	a1,a0,80006a9c <__memmove+0x108>
    800069b0:	00758713          	addi	a4,a1,7
    800069b4:	00a5e7b3          	or	a5,a1,a0
    800069b8:	40a70733          	sub	a4,a4,a0
    800069bc:	0077f793          	andi	a5,a5,7
    800069c0:	00f73713          	sltiu	a4,a4,15
    800069c4:	00174713          	xori	a4,a4,1
    800069c8:	0017b793          	seqz	a5,a5
    800069cc:	00e7f7b3          	and	a5,a5,a4
    800069d0:	10078863          	beqz	a5,80006ae0 <__memmove+0x14c>
    800069d4:	00900793          	li	a5,9
    800069d8:	1107f463          	bgeu	a5,a6,80006ae0 <__memmove+0x14c>
    800069dc:	0036581b          	srliw	a6,a2,0x3
    800069e0:	fff8081b          	addiw	a6,a6,-1
    800069e4:	02081813          	slli	a6,a6,0x20
    800069e8:	01d85893          	srli	a7,a6,0x1d
    800069ec:	00858813          	addi	a6,a1,8
    800069f0:	00058793          	mv	a5,a1
    800069f4:	00050713          	mv	a4,a0
    800069f8:	01088833          	add	a6,a7,a6
    800069fc:	0007b883          	ld	a7,0(a5)
    80006a00:	00878793          	addi	a5,a5,8
    80006a04:	00870713          	addi	a4,a4,8
    80006a08:	ff173c23          	sd	a7,-8(a4)
    80006a0c:	ff0798e3          	bne	a5,a6,800069fc <__memmove+0x68>
    80006a10:	ff867713          	andi	a4,a2,-8
    80006a14:	02071793          	slli	a5,a4,0x20
    80006a18:	0207d793          	srli	a5,a5,0x20
    80006a1c:	00f585b3          	add	a1,a1,a5
    80006a20:	40e686bb          	subw	a3,a3,a4
    80006a24:	00f507b3          	add	a5,a0,a5
    80006a28:	06e60463          	beq	a2,a4,80006a90 <__memmove+0xfc>
    80006a2c:	0005c703          	lbu	a4,0(a1)
    80006a30:	00e78023          	sb	a4,0(a5)
    80006a34:	04068e63          	beqz	a3,80006a90 <__memmove+0xfc>
    80006a38:	0015c603          	lbu	a2,1(a1)
    80006a3c:	00100713          	li	a4,1
    80006a40:	00c780a3          	sb	a2,1(a5)
    80006a44:	04e68663          	beq	a3,a4,80006a90 <__memmove+0xfc>
    80006a48:	0025c603          	lbu	a2,2(a1)
    80006a4c:	00200713          	li	a4,2
    80006a50:	00c78123          	sb	a2,2(a5)
    80006a54:	02e68e63          	beq	a3,a4,80006a90 <__memmove+0xfc>
    80006a58:	0035c603          	lbu	a2,3(a1)
    80006a5c:	00300713          	li	a4,3
    80006a60:	00c781a3          	sb	a2,3(a5)
    80006a64:	02e68663          	beq	a3,a4,80006a90 <__memmove+0xfc>
    80006a68:	0045c603          	lbu	a2,4(a1)
    80006a6c:	00400713          	li	a4,4
    80006a70:	00c78223          	sb	a2,4(a5)
    80006a74:	00e68e63          	beq	a3,a4,80006a90 <__memmove+0xfc>
    80006a78:	0055c603          	lbu	a2,5(a1)
    80006a7c:	00500713          	li	a4,5
    80006a80:	00c782a3          	sb	a2,5(a5)
    80006a84:	00e68663          	beq	a3,a4,80006a90 <__memmove+0xfc>
    80006a88:	0065c703          	lbu	a4,6(a1)
    80006a8c:	00e78323          	sb	a4,6(a5)
    80006a90:	00813403          	ld	s0,8(sp)
    80006a94:	01010113          	addi	sp,sp,16
    80006a98:	00008067          	ret
    80006a9c:	02061713          	slli	a4,a2,0x20
    80006aa0:	02075713          	srli	a4,a4,0x20
    80006aa4:	00e587b3          	add	a5,a1,a4
    80006aa8:	f0f574e3          	bgeu	a0,a5,800069b0 <__memmove+0x1c>
    80006aac:	02069613          	slli	a2,a3,0x20
    80006ab0:	02065613          	srli	a2,a2,0x20
    80006ab4:	fff64613          	not	a2,a2
    80006ab8:	00e50733          	add	a4,a0,a4
    80006abc:	00c78633          	add	a2,a5,a2
    80006ac0:	fff7c683          	lbu	a3,-1(a5)
    80006ac4:	fff78793          	addi	a5,a5,-1
    80006ac8:	fff70713          	addi	a4,a4,-1
    80006acc:	00d70023          	sb	a3,0(a4)
    80006ad0:	fec798e3          	bne	a5,a2,80006ac0 <__memmove+0x12c>
    80006ad4:	00813403          	ld	s0,8(sp)
    80006ad8:	01010113          	addi	sp,sp,16
    80006adc:	00008067          	ret
    80006ae0:	02069713          	slli	a4,a3,0x20
    80006ae4:	02075713          	srli	a4,a4,0x20
    80006ae8:	00170713          	addi	a4,a4,1
    80006aec:	00e50733          	add	a4,a0,a4
    80006af0:	00050793          	mv	a5,a0
    80006af4:	0005c683          	lbu	a3,0(a1)
    80006af8:	00178793          	addi	a5,a5,1
    80006afc:	00158593          	addi	a1,a1,1
    80006b00:	fed78fa3          	sb	a3,-1(a5)
    80006b04:	fee798e3          	bne	a5,a4,80006af4 <__memmove+0x160>
    80006b08:	f89ff06f          	j	80006a90 <__memmove+0xfc>
	...
