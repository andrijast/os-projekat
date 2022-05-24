
tasks
- (5) alokacija memorije
	- (cs): MemoryAllocator (s)
	- (sp): mem_alloc, mem_free
- (10) upravljanje nitima
	- (cs): Thread, PCB, Scheduler (s)
	- (sp): thread_create, thread_exit, thread_dispatch
- (5) semafori
	- (cs): Semaphore
	- (sp): sem_open, sem_close, sem_wait, sem_signal
- (10) asinhrona promena konteksta
	- (cs): PeriodicThread
	- (sp): thread_sleep, getc, putc
- (cs): Console (s)


tasks
- memory allocator
- thread
	- time sharing
	- semaphore
	- preemption (async promena konteksta)


queue:
- alokator memorije
- prekidna rutina
- sistemski pozivi ??
- kostur Thread i Scheduler
- sistemski stek, yield
- formiranje pocetnog konteksta niti
	- dispatch, thread_create
- gasenje niti, thread_exit
- semafori
- asinhroni prekid od tajmera, raspodela vremena, time sharing
- time_sleep
- konzola: putc
- konzola: getc
- C++ API u celini


