#pragma once

#include "MemoryAllocator.hpp"
#include "PCB.hpp" // making use of PCB::next

class PCBQueue {

public:
    PCBQueue(): head(nullptr), tail(nullptr) {}

    void push(PCB* pcb) {
        pcb->next = nullptr;
        if (!head) {
            head = tail = pcb;
        } else {
            tail->next = pcb;
            tail = pcb;
        }
    }

    PCB* pop() {
        if (!head)
            return nullptr;
        PCB* ret = head;
        head = head->next;
        if (!head) tail = nullptr;
        ret->next = nullptr;
        return ret;
    }

    PCB* front() {
        return head;
    }

    void insert(PCB* pcb) { // with priority (for sleep)
        PCB* prev = nullptr;
        PCB* curr = head;
        while (curr && pcb->sleepThreshold > curr->sleepThreshold) {
            prev = curr;
            curr = curr->next;
        }
        pcb->next = curr;
        if (!prev) head = pcb;
        else prev->next = pcb;
        if (!curr) tail = pcb;
    }

    // memory allocation
    void* operator new(size_t size) {
        return MemoryAllocator::kmalloc(size);
    }
    void operator delete(void* ptr) {
        MemoryAllocator::kfree(ptr);
    }

private:
    PCB* head;
    PCB* tail;

};