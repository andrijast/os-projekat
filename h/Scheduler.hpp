#pragma once

class TCB;
class TCBQueue;

class Scheduler {

    static TCBQueue ready;
    static TCBQueue sleeping;

    static void put(TCB* tcb);
    static TCB* get();

    static void putToSleep(TCB* tcb);
    static void checkAwake();

    // friends
    friend class Riscv;
    friend class Kernel;
    friend class TCB;
    friend class KSemaphore;
};

