#include "../h/syscall_c.hpp"

void* mem_alloc(size_t size) {
    uint64 inBlocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;

    __asm__ volatile("mv a1, %0" : : "r" (inBlocks));
    __asm__ volatile("mv a0, %0" : : "r" (0x01));

    __asm__ volatile("ecall");

    uint64 ret = 0x01;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return (void*)ret;
}

int mem_free(void* adr) {
    __asm__ volatile("mv a1, %0" : : "r" ((uint64)adr));
    __asm__ volatile("mv a0, %0" : : "r" (0x02));

    __asm__ volatile("ecall");

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return (int)ret;
}

int thread_create(thread_t* handle, void (*body)(void*), void* args) {
    void* stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    if (!stack_space) return -1;

    __asm__ volatile("mv a4, %0" : : "r" ((uint64)stack_space));
    __asm__ volatile("mv a3, %0" : : "r" ((uint64)args));
    __asm__ volatile("mv a2, %0" : : "r" ((uint64)body));
    __asm__ volatile("mv a1, %0" : : "r" ((uint64)handle));
    __asm__ volatile("mv a0, %0" : : "r" (0x11));

    __asm__ volatile("ecall");

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return (int)ret;
}

int thread_exit() {
    __asm__ volatile("mv a0, %0" : : "r" (0x12));

    __asm__ volatile("ecall");

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return (int)ret;
}

void thread_dispatch() {
    __asm__ volatile("mv a0, %0" : : "r" (0x13));

    __asm__ volatile("ecall");
}

int thread_build(thread_t* handle, void(*body)(void*), void *args) {
    void* stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    if (!stack_space) return -1;

    __asm__ volatile("mv a4, %0" : : "r" ((uint64)stack_space));
    __asm__ volatile("mv a3, %0" : : "r" ((uint64)args));
    __asm__ volatile("mv a2, %0" : : "r" ((uint64)body));
    __asm__ volatile("mv a1, %0" : : "r" ((uint64)handle));
    __asm__ volatile("mv a0, %0" : : "r" (0x14));

    __asm__ volatile("ecall");

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return (int)ret;
}

int thread_start(void* p) {
    __asm__ volatile("mv a1, %0" : : "r" ((uint64)p));
    __asm__ volatile("mv a0, %0" : : "r" (0x15));

    __asm__ volatile("ecall");

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return (int)ret;
}

int thread_delete(thread_t handle) {
    __asm__ volatile("mv a1, %0" : : "r" ((uint64)handle));
    __asm__ volatile("mv a0, %0" : : "r" (0x16));

    __asm__ volatile("ecall");

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return (int)ret;
}


int sem_open(sem_t* handle, unsigned init) {
    __asm__ volatile("mv a2, %0" : : "r" ((uint64)init));
    __asm__ volatile("mv a1, %0" : : "r" ((uint64)handle));
    __asm__ volatile("mv a0, %0" : : "r" (0x21));

    __asm__ volatile("ecall");

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return (int)ret;
}

int sem_close(sem_t handle) {
    __asm__ volatile("mv a1, %0" : : "r" ((uint64)handle));
    __asm__ volatile("mv a0, %0" : : "r" (0x22));

    __asm__ volatile("ecall");

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return (int)ret;
}

int sem_wait(sem_t id) {
    __asm__ volatile("mv a1, %0" : : "r" ((uint64)id));
    __asm__ volatile("mv a0, %0" : : "r" (0x23));

    __asm__ volatile("ecall");

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return (int)ret;
}

int sem_signal(sem_t id) {
    __asm__ volatile("mv a1, %0" : : "r" ((uint64)id));
    __asm__ volatile("mv a0, %0" : : "r" (0x24));

    __asm__ volatile("ecall");

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return (int)ret;
}

int time_sleep(uint64 time) {
    __asm__ volatile("mv a1, %0" : : "r" ((uint64)time));
    __asm__ volatile("mv a0, %0" : : "r" (0x31));

    __asm__ volatile("ecall");

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return (int)ret;
}


char getc() {
    __asm__ volatile("mv a0, %0" : : "r" (0x41));

    __asm__ volatile("ecall");

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return (char)ret;
}

void putc(char c) {
    __asm__ volatile("mv a1, %0" : : "r" ((uint64)c));
    __asm__ volatile("mv a0, %0" : : "r" (0x42));

    __asm__ volatile("ecall");
}

char getc_output() {
    __asm__ volatile("mv a0, %0" : : "r" (0x43));

    __asm__ volatile("ecall");

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return (char)ret;
}

