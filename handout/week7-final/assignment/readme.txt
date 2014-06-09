  .-------------------------------.
  |  PROACTIVE COMPUTER SECURITY  |
  |    Week 7: Heap overflows     |
  |      Weekly assignment        |
  '-------------------------------'

The program "bmptool" contains a number of exploitable bugs. Reverse engineer
the program to locate the vulnerabilities, and hand in the following:

1. A commented dissassembly of a function which contains a stack based
   vulnerability (stack buffer overflow or format string vulnerability).
   Include enough details to demonstrate that you know why the function
   is vulnerable, and how this vulnerability can be exploited.

2. A drawing of the stack layout of the function from (1), describing the
   layout at the time of exploitation.

3. A self-contained (i.e. if it needs files on disk, it must write the files
   first) exploit for the vulnerability form (1). The exploit must be written
   in C. The exploit must execute /bin/sh without arguments. Feel free to use
   the enclosed stack-shellcode.asm as a template. Document the code well.

4. A commented dissassembly of a function which contains a
   write-what-where OR a heap vulnerability (heap buffer overflow, use
   after free, or similar). Include enough details to demonstrate that
   you know why the function is vulnerable, and how this vulnerability
   can be exploited.

5. A drawing of the heap layout of the relevant chunks from (4), describing the
   layout at the time of exploitation.

6. A self-contained (i.e. if it needs files on disk, it must write the files
   first) exploit for the vulnerability form (4). The exploit must be written
   in C. The exploit must execute /bin/sh without arguments. Feel free to use
   the enclosed heap-shellcode.asm as a template. Document the code well.


Hint:
  $ ./bmptool -read demo.bmp -fliph -bw -write out.bmp
