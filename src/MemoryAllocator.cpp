#include "../h/Riscv.hpp"
#include "../h/MemoryAllocator.hpp"

MemoryAllocator::Block* MemoryAllocator::head = nullptr;
MemoryAllocator::Block* MemoryAllocator::unalloc = nullptr;

void* MemoryAllocator::mem_alloc(size_t in_bytes) {

    if (unalloc == nullptr)
        unalloc = (Block*)HEAP_START_ADDR;

    size_t in_blocks = (in_bytes + sizeof(size_t) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;

    for (Block* curr = head, *prev = nullptr; curr != nullptr; curr = (curr->next)) {
        if (curr->size >= in_blocks) {
            void* ret = &(curr->next);
            if (curr->size == in_blocks) {
                if (prev)
                    prev->next = curr->next;
                else
                    head = curr->next;
            }
            else {
                Block* remaining = (Block*)((uint8*)curr + in_blocks * MEM_BLOCK_SIZE);
                remaining->size = curr->size - in_blocks;
                remaining->next = curr->next;
                if (prev)
                    prev->next = remaining;
                else
                    head = remaining;
                curr->size = in_blocks;
            }
            return ret;
        }
        prev = curr;
    }

    if ((uint8*)unalloc + in_blocks * MEM_BLOCK_SIZE <= (uint8*) HEAP_END_ADDR) {
        Block* fresh = (Block*) unalloc;
        unalloc = (Block*)((uint8*)unalloc + in_blocks * MEM_BLOCK_SIZE);
        fresh->size = in_blocks;
        return (void*)&(fresh->next);
    }

    return nullptr;
}

uint64 MemoryAllocator::mem_free(void* ptr) {

    Block* x = (Block*)((size_t*)ptr - 1);
    x->next = head;
    head = x;

    return 0;
}

void* MemoryAllocator::kmalloc(size_t size) {
    return MemoryAllocator::mem_alloc(size);
}

uint64 MemoryAllocator::kfree(void* ptr) {
    return MemoryAllocator::mem_free(ptr);
}


// ----- SYSTEM CALLS -----

void MemoryAllocator::sc_mem_alloc() {
    size_t size = (size_t) Riscv::r_a(1);
    size *= MEM_BLOCK_SIZE; // now in bytes
    void* addr = mem_alloc(size);
    Riscv::w_a0((uint64)addr);
}

void MemoryAllocator::sc_mem_free() {
    void* ptr = (void*) Riscv::r_a(1);
    uint64 ret = mem_free(ptr);
    Riscv::w_a0(ret);
}
