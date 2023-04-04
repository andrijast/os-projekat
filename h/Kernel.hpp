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

    static PCB* systemThread;
    static PCB* consoleThread;
    static PCB* userThread;

    static void userMainWrapper(void* p);
    static void initialize();
    static void terminate();

};