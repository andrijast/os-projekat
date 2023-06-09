#pragma once

#include "../lib/hw.h"

void* mem_alloc(size_t in_blocks);
int mem_free(void* addr);

class _thread {};
typedef _thread* thread_t;

int thread_create(thread_t* handle_ptr, void(*body)(void*), void* args);
int thread_exit();
void thread_dispatch();
void thread_join(thread_t handle);

int thread_build(thread_t* handle_ptr, void(*body)(void*), void* args);
int thread_start(thread_t handle);
int thread_delete(thread_t handle);

class _sem {};
typedef _sem* sem_t;

int sem_open(sem_t* handle_ptr, unsigned init);
int sem_close(sem_t handle);

int sem_wait(sem_t handle);
int sem_signal(sem_t handle);

// typedef unsigned long time_t;
int time_sleep(time_t);

// const int EOF = -1;
char getc();
void putc(char);
char getc_output();
