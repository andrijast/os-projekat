#pragma once

#include "MemoryAllocator.hpp"
#include "TCB.hpp" // making use of TCB::next

class TCBQueue {

public:
    TCBQueue(): head(nullptr), tail(nullptr) {}

    void push(TCB* tcb) {
        tcb->next = nullptr;
        if (!head) {
            head = tail = tcb;
        } else {
            tail->next = tcb;
            tail = tcb;
        }
    }

    TCB* pop() {
        if (!head)
            return nullptr;
        TCB* ret = head;
        head = head->next;
        if (!head) tail = nullptr;
        ret->next = nullptr;
        return ret;
    }

    TCB* front() {
        return head;
    }

    void insert(TCB* tcb) { // with priority (for sleep)
        TCB* prev = nullptr;
        TCB* curr = head;
        while (curr && tcb->sleepThreshold > curr->sleepThreshold) {
            prev = curr;
            curr = curr->next;
        }
        tcb->next = curr;
        if (!prev) head = tcb;
        else prev->next = tcb;
        if (!curr) tail = tcb;
    }

    // memory allocation
    void* operator new(size_t size) {
        return MemoryAllocator::kmalloc(size);
    }
    void operator delete(void* ptr) {
        MemoryAllocator::kfree(ptr);
    }

private:
    TCB* head;
    TCB* tail;

};