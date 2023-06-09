

## Links

- Zadatak
    > [tekst](http://os.etf.rs/OS1/projekat/Projektni%20zadatak%202023.%20v1.0.pdf)
    | [sajt](http://os.etf.rs/OS1/projekat.htm)
	| [materijali](http://os.etf.rs/OS1/projekat/)
- Risc-V
    > [specs](https://riscv.org/technical/specifications/)
- xv6
    > [book](https://pdos.csail.mit.edu/6.828/2021/xv6/book-riscv-rev2.pdf)
    | [hhp3 youtube playlist](https://www.youtube.com/playlist?list=PLbtzT1TYeoMhTPzyTZboW_j7TPAnjv9XB)
    | [github repo](https://github.com/mit-pdos/xv6-riscv)
- QEMU
    > [docs](https://www.qemu.org/docs/master/)
    | [wiki](https://wiki.qemu.org/Documentation)
    | [command options](https://www.qemu.org/docs/master/system/invocation.html)
- GNU tools
	> [riscv toolchain repo](https://github.com/riscv-collab/riscv-gnu-toolchain)
    | [manuals](https://www.gnu.org/manual/manual.html)
    | [make](https://www.gnu.org/software/make/manual/html_node/index.html)
    | [gcc options](https://linux.die.net/man/1/gcc)
    | [ld options](https://linux.die.net/man/1/ld)
	| [extended asm](https://gcc.gnu.org/onlinedocs/gcc/Extended-Asm.html)
- other tools
    > [risc-v interpreter](https://www.cs.cornell.edu/courses/cs3410/2019sp/riscv/interpreter/)
    | [compiler explorer](https://godbolt.org/)
    | [demangler](http://demangler.com/)



## Progress

potential bugs:
- memory allocator: &(x->next)
- KConsole::putCharacterOutput(c); console interrupt
- KConsole: pendingPutc, pendingGetc
- -fno-use-cxa-atexit (static destructors not called)
- mc_sip(SIP_SSIP); timer interrupt
- back from sem return
- system thread timeSlice = 0

TODO-s:
- friend classes, private vs public
- minimize includes, kernel namespace
- debugging prints
- memory allocation
	- tracking allocated memory
	- valid mem_free check
	- defragmentation

