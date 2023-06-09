#pragma once

#include "TCBQueue.hpp"
//class TCBQueue;

class KSemaphore {

    KSemaphore(int val = 0);
    ~KSemaphore();

    int val;
    TCBQueue blocked;

    void block();
    void unblock();

    uint64 wait();
    uint64 signal();

    // memory allocation
    void* operator new(size_t size);
    void operator delete(void *p);

    // system call handlers
    static void sc_sem_open();
    static void sc_sem_close();
    static void sc_sem_wait();
    static void sc_sem_signal();

    // friends
    friend class Riscv;
    friend class CharBuffer;
};
