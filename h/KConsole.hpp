#pragma once

class CharBuffer;

class KConsole {

    static const uint64 bufferSize = 8192;
    static void initialize();

    static CharBuffer* input;
    static CharBuffer* output;

    enum ConsoleStatusBits {
        STATUS_READ = CONSOLE_RX_STATUS_BIT,
        STATUS_WRITE = CONSOLE_TX_STATUS_BIT,
    };

    // util functions - debug prints
    static void kPrintString(const char* string);
    static void kPrintInt(int x, int base = 10);

    // i/o handlers
    static void getCharactersFromConsole(); // interrupt
    static void sendCharactersToConsole(void*); // thread

    // syscall handlers
    static void sc_putc();
    static void sc_getc();
    static void sc_getc_output();

    // friends
    friend class Riscv;
    friend class Kernel;
};

