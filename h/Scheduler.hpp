#pragma once

class PCB;
class PCBQueue;

class Scheduler {

    static PCBQueue ready;
    static PCBQueue sleeping;

    static void put(PCB* pcb);
    static PCB* get();

    static void putToSleep(PCB* pcb);
    static void checkAwake();

    // friends
    friend class Riscv;
    friend class Kernel;
    friend class PCB;
    friend class KSemaphore;
};

