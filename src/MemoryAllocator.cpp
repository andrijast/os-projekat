#include "../h/Riscv.hpp"
#include "../h/MemoryAllocator.hpp"

MemoryAllocator::Chunk* MemoryAllocator::head = nullptr;
MemoryAllocator::Chunk* MemoryAllocator::unalloc = nullptr;

void MemoryAllocator::initialize() {

    unalloc = (Chunk*)HEAP_START_ADDR;
}

void* MemoryAllocator::mem_alloc(size_t in_bytes) {

    // block size 64 bytes
    size_t in_blocks = (in_bytes + sizeof(size_t) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;

    // look for space in freed chunks
    for (Chunk* curr = head, *prev = nullptr; curr != nullptr; curr = (curr->next)) {
        if (curr->size >= in_blocks) {
            void* addr = &(curr->next);
            if (curr->size == in_blocks) {
                if (prev)
                    prev->next = curr->next;
                else
                    head = curr->next;
            }
            else {
                Chunk* remaining = (Chunk*)((uint8*)curr + in_blocks * MEM_BLOCK_SIZE);
                remaining->size = curr->size - in_blocks;
                remaining->next = curr->next;
                if (prev)
                    prev->next = remaining;
                else
                    head = remaining;
                curr->size = in_blocks;
            }
            return addr;
        }
        prev = curr;
    }

    // check for unallocated space
    if ((uint8*)unalloc + in_blocks * MEM_BLOCK_SIZE <= (uint8*) HEAP_END_ADDR) {
        Chunk* fresh = (Chunk*) unalloc;
        unalloc = (Chunk*)((uint8*)unalloc + in_blocks * MEM_BLOCK_SIZE);
        fresh->size = in_blocks;
        return (void*)&(fresh->next);
    }

    // no more free memory
    return nullptr;
}

uint64 MemoryAllocator::mem_free(void* addr) {

    Chunk* chunk = (Chunk*)((size_t*)addr - 1);
    chunk->next = head;
    head = chunk;

    return 0;
}

void MemoryAllocator::defragment() {
    // TODO
}

void* MemoryAllocator::kmalloc(size_t size) {
    return MemoryAllocator::mem_alloc(size);
}

uint64 MemoryAllocator::kfree(void* addr) {
    return MemoryAllocator::mem_free(addr);
}


// ----- SYSTEM CALLS -----

void MemoryAllocator::sc_mem_alloc() {
    size_t in_blocks = (size_t) Riscv::r_a(1);
    void* addr = mem_alloc(in_blocks * MEM_BLOCK_SIZE);
    Riscv::w_a0((uint64)addr);
}

void MemoryAllocator::sc_mem_free() {
    void* addr = (void*) Riscv::r_a(1);
    uint64 err = mem_free(addr);
    Riscv::w_a0(err);
}
