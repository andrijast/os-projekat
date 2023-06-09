#pragma once

#include "syscall_c.hpp"

void* operator new(size_t in_bytes);
void operator delete(void* addr);

class Thread {
public:
    Thread (void (*body)(void*), void* args);
    virtual ~Thread();

    int start();

    static void dispatch();
    static int sleep(time_t);

protected:
    Thread();
    virtual void run() {}

private:
    thread_t handle;
    static void wrapper(void* arg);
};

class Semaphore {
public:
    Semaphore(unsigned init = 1);
    virtual ~Semaphore();

    int wait();
    int signal();

private:
    sem_t handle;
};

class PeriodicThread : public Thread {
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {}
private:
    static void wrapper(void* arg);
};

class Console {
public:
    static char getc();
    static void putc(char);
};