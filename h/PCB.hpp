#pragma once

#include "MemoryAllocator.hpp"

class PCB {

    using Body = void (*)(void*);

    static void initialize();
    PCB(Body body, void* args,
        void* stack_space = MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE),
        uint64 timeSlice = DEFAULT_TIME_SLICE);
    ~PCB();

    static PCB* running;
    void start();
    static void runner();
    static void dispatch();
    static void timerInterrupt();

    enum State {
        CREATED, READY, RUNNING, // runnable
        SUSPENDED, SLEEPING, FINISHED, // blocked
    }; // queues: ready, suspended, sleeping
    State state = CREATED;
    void setState(State s) { state = s; }
    bool finished() { return state == FINISHED; }

    uint64 sleepThreshold = 0;
    void setSleepThreshold(uint64 time) { sleepThreshold = time; }

    Body body;
    void* args;
    void* stack_space;

    const uint64 timeSlice;
    static uint64 timeSliceCounter;

    bool privileged = false;

    uint64 savedSP = 0;

    bool backFromClosedSem = false;

    // used in PCBQueue
    PCB* next = nullptr;

    struct Context {
        uint64 sp;
        uint64 ra;
    };
    Context context;

    // conswitch
    static void contextSwitch(PCB::Context* oldContext, PCB::Context* newContext);

    // memory allocation
    void* operator new(size_t size);
    void operator delete(void *ptr);

    // system call handlers
    static void sc_thread_create();
    static void sc_thread_exit();
    static void sc_thread_dispatch();
    static void sc_thread_build();
    static void sc_thread_start();
    static void sc_thread_delete();
    static void sc_time_sleep();

    // friends
    friend class Riscv;
    friend class Kernel;
    friend class Scheduler;
    friend class KSemaphore;
    friend class PCBQueue;
};

