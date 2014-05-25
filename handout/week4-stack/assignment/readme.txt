  .-------------------------------.
  |  PROACTIVE COMPUTER SECURITY  |
  |    Week 4: Stack overflows    |
  |      Weekly assignment        |
  '-------------------------------'

The program "parrot" is vulnerable to a stack buffer overflow. Locate the
vulnerability, and hand in the following:

1. A commented disassembly of the vulnerable function.

2. A drawing of the vulnerable function's stack layout, including arguments,
   return address, stack cookie, saved registers, and local variables. Use
   ASCII art, a picture of a hand drawing on a napkin, PostScript, or
   similar.

3. An exploit that will give an attacker arbitrary code execution. The
   exploit must be written in C. Feel free to use exploit.c as a template.
   Use your shellcode from the previous exercise.

4. A description of how you worked around the stack protection.


Hints
  If you place your shellcode in shellcode.asm, the rules in the Makefile will
  assemble it, convert the output to a C array, and write it to shellcode.h.

  If you compile your exploit to i386 code (-m32 if you are on amd64), you can
  run your exploit in gdb and stay attached when the vulnerable program is
  executed.

  $ gcc -m32 -o exploit exploit.c
  $ gdb ./exploit
