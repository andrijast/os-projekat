#include "../h/syscall_cpp.hpp"

// ---------- MEMORY ----------

void* operator new(size_t in_bytes) {
    return mem_alloc(in_bytes);
}
void operator delete(void* addr) {
    mem_free(addr);
}

// ---------- THREAD ----------

Thread::Thread(void (*body)(void*), void *args) {
    handle = nullptr;
    thread_create(&handle, body, args);
}

Thread::~Thread() {
    thread_delete(handle);
}

int Thread::start() {
    if (handle) {
        return thread_start(handle);
    }
    return -1;
}

void Thread::dispatch() {
    thread_dispatch();
}

int Thread::sleep(time_t in_periodes) {
    return time_sleep(in_periodes);
}

Thread::Thread() {
    handle = nullptr;
    thread_build(&handle, &Thread::wrapper, (void*)this);
}

void Thread::wrapper(void* thread) {
    ((Thread*)thread)->run();
}

// ----- Periodic thread -----

struct PTargs {
    PeriodicThread* thread;
    time_t period;
};

PeriodicThread::PeriodicThread(time_t period)
        : Thread(&PeriodicThread::wrapper, new PTargs({this, period})) {}

void PeriodicThread::wrapper(void* args) {
    PeriodicThread* thread = (PeriodicThread*)((PTargs*)args)->thread;
    time_t period = ((PTargs*)args)->period;

    while (true) {
        thread->periodicActivation();
        Thread::sleep(period);
    }
}


// ---------- SEMAPHORE ----------

Semaphore::Semaphore(unsigned init) {
    int err = sem_open(&handle, init);
    if (err != 0) handle = nullptr;
}

Semaphore::~Semaphore() {
    sem_close(handle);
}

int Semaphore::wait() {
    if (!handle) return -1;
    return sem_wait(handle);
}

int Semaphore::signal() {
    if (!handle) return -1;
    return sem_signal(handle);
}


// ---------- CONSOLE ----------

char Console::getc() {
    return ::getc();
}
void Console::putc(char c) {
    ::putc(c);
}