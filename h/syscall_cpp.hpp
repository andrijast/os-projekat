#pragma once

#include "syscall_c.hpp"

void* operator new(size_t in_bytes);
void operator delete(void* addr);

class Thread {
public:
    Thread (void (*body)(void*), void* args);
    virtual ~Thread();

    int start();

    void join();

    static void dispatch();
    static int sleep(time_t);

protected:
    Thread();
    virtual void run() {}

private:
    thread_t handle;
    void (*body)(void*); void* args;
    static void wrapper(void* args);
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
public:
    void terminate();
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {}
private:
    time_t period;
    static void wrapper(void* arg);
    bool terminated;
};

class Console {
public:
    static char getc();
    static void putc(char);
};