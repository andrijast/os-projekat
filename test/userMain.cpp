// #include "../test/Threads_C_API_test.hpp" // zadatak 2, niti C API i sinhrona promena konteksta
//#include "../test/Threads_CPP_API_test.hpp" // zadatak 2., niti CPP API i sinhrona promena konteksta

//#include "../test/ConsumerProducer_C_API_test.h" // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
//#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

//#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta


// #include "../h/syscall_cpp.hpp"

// bool finished1 = false;
// bool finished2 = false;

// void printNums1(void* arg) {
//     int n = (uint64)arg;
//     for (int i = 1; i <= n; i++) {
//         printString("1: ");
//         printInt(i);
//         putc('\n');
//         if (i % 10) time_sleep(1);
//     }
//     finished1 = true;
// }

// void printNums2(void* arg) {
//     int n = (uint64)arg;
//     for (int i = 1; i <= n; i++) {
//         printString("2: ");
//         printInt(i);
//         putc('\n');
//         if (i % 5) time_sleep(2);
//     }
//     finished2 = true;
// }

// void mojTest() {
//     char *a = new char;
//     *a = 'a';
//     putc(*a);
//     putc('\n');

//     thread_t handle1;
//     int r1 = thread_create(&handle1, printNums1, (void*)20);
//     thread_t handle2;
//     int r2 = thread_create(&handle2, printNums2, (void*)20);

//     while (!(finished1 && finished2)) {
//         thread_dispatch();
//     }

//     putc(r1 + '0');
//     putc(r2 + '0');

//     putc('h');
//     putc('\n');

// }

void userMain() {
    //Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    //Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta

    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    // mojTest();
}
