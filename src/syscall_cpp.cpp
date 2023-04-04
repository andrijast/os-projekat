#include "../h/syscall_cpp.hpp"

// ---------- MEMORY ----------

void* operator new(size_t sz) {
    return mem_alloc(sz);
}
void operator delete(void* adr) {
    mem_free(adr);
}

// ---------- THREAD ----------

Thread::Thread(void (*body)(void*), void *args) {
    myHandle = nullptr;
    thread_create(&myHandle, body, args);
}

Thread::~Thread() {
    thread_delete(myHandle);
}

int Thread::start() {
    if (myHandle) {
        return thread_start(myHandle);
    }
    return -1;
}

void Thread::dispatch() {
    thread_dispatch();
}

int Thread::sleep(time_t time) {
    return time_sleep(time);
}

Thread::Thread() {
    myHandle = nullptr;
    thread_build(&myHandle, &Thread::wrapper, (void*)this);
}

void Thread::wrapper(void *thread) {
    ((Thread*)thread)->run();
}

// ----- Periodic thread -----

struct PTargs {
    PeriodicThread* thread;
    time_t period;
};

PeriodicThread::PeriodicThread(time_t period)
        : Thread(&PeriodicThread::wrapper, new PTargs({this, period})) {}

void PeriodicThread::wrapper(void* arg) {
    PeriodicThread *thread = (PeriodicThread*)((PTargs*)arg)->thread;
    time_t period = ((PTargs*)arg)->period;

    while (true) {
        thread->periodicActivation();
        Thread::sleep(period);
    }
}


// ---------- SEMAPHORE ----------

Semaphore::Semaphore(unsigned init) {
    int ret = sem_open(&myHandle, init);
    if (ret != 0) myHandle = nullptr;
}

Semaphore::~Semaphore() {
    sem_close(myHandle);
}

int Semaphore::wait() {
    if (!myHandle) return -1;
    return sem_wait(myHandle);
}

int Semaphore::signal() {
    if (!myHandle) return -1;
    return sem_signal(myHandle);
}


// ---------- CONSOLE ----------

char Console::getc() {
    return ::getc();
}
void Console::putc(char c) {
    ::putc(c);
}