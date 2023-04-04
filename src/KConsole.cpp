#include "../h/Riscv.hpp"
#include "../h/CharBuffer.hpp"
#include "../h/KConsole.hpp"

CharBuffer* KConsole::input = nullptr;
CharBuffer* KConsole::output = nullptr;

void KConsole::initialize() {
    input = new CharBuffer();
    output = new CharBuffer();
}

// ----- KERNEL PRINTS -----

void KConsole::kPrintString(const char* string) {
    while (*string != '\0') {
        output->put(*string);
        string++;
    }
}

void KConsole::kPrintInt(int x, int base) {
    bool neg = false;
    if (x < 0) neg = true, x = -x;
    char digits[] = "0123456789ABCDEF";
    char buf[16];
    int n = 0;
    do buf[n++] = digits[x % base];
    while ((x /= base) != 0);
    if (neg) buf[n++] = '-';
    while (n--) output->put(buf[n]);
}

// ----- I/O HANDLERS -----

// interrupt
void KConsole::getCharactersFromConsole() {
    bool readable = Riscv::console_status() & STATUS_READ;
    if (readable) {
        char c = Riscv::console_receive();
        // if (pendingGetc > 0)
        input->put(c);
    }
}

#include "../h/syscall_c.hpp"
#include "../h/Kernel.hpp"

// thread
void KConsole::sendCharactersToConsole(void* _) {
    while(true) {

        if (Kernel::finished() && output->empty())
            thread_exit();

        bool writable = Riscv::console_status() & STATUS_WRITE;
        if (writable && !output->empty()) {
            char volatile c = getc_output();
            Riscv::console_send(c);
        }

        else {
            thread_dispatch();
        }
    }
}

// ----- SYSTEM CALLS -----

void KConsole::sc_getc() {
    char c = input->get();
    if (c != 27) // ESC = 27
        output->put(c);
    if (c == 13) // CR = 13, LF = 10
        output->put(10);
    Riscv::w_a0((uint64)c);
}

void KConsole::sc_putc() {
    char c = (char) Riscv::r_a(1);
    output->put(c);
}

void KConsole::sc_getc_output() {
    char c = output->get();
    Riscv::w_a0((uint64)c);
}