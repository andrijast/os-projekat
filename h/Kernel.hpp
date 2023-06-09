#pragma once

class Kernel {

public:
    static void main();
    static bool finished() { return state == FINISHED; }

private:

    enum State {
        STARTED, RUNNING, FINISHED
    };
    static State state;

    static TCB* systemThread;
    static TCB* consoleThread;
    static TCB* userThread;

    static void userMainWrapper(void* p);
    static void initialize();
    static void terminate();

};