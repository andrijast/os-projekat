#pragma once

#include "../lib/hw.h"

class MemoryAllocator {

private:

    struct Chunk {
        size_t size; // in blocks
        Chunk* next;
    };

    static Chunk* head;
    static Chunk* unalloc;

    static void initialize();

    static void defragment();

    // user allocations
    static void* mem_alloc(size_t in_bytes);
    static uint64 mem_free(void* addr);

    // kernel allocations
    static void* kmalloc(size_t in_bytes);
    static uint64 kfree(void* addr);

    // syscall handlers
    static void sc_mem_alloc();
    static void sc_mem_free();

    // friends
    friend class Riscv;
    friend class Kernel;
    friend class TCB;
    friend class KSemaphore;
    friend class TCBQueue;
    friend class CharBuffer;
};
