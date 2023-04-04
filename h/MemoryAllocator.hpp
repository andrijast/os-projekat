#pragma once

#include "../lib/hw.h"

class MemoryAllocator {

private:

    struct Block {
        size_t size;
        Block* next;
    };

    static Block* head;
    static Block* unalloc;

    // user allocations
    static void* mem_alloc(size_t in_bytes);
    static uint64 mem_free(void* ptr);

    // kernel allocations
    static void* kmalloc(size_t size);
    static uint64 kfree(void* ptr);

    // syscall handlers
    static void sc_mem_alloc();
    static void sc_mem_free();

    // friends
    friend class Riscv;
    friend class PCB;
    friend class KSemaphore;
    friend class PCBQueue;
    friend class CharBuffer;
};
