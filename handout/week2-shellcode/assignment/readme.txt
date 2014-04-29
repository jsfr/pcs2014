  .-------------------------------.
  |  PROACTIVE COMPUTER SECURITY  |
  |    Week 2: Shellcode          |
  |      Weekly assignment        |
  '-------------------------------'

Write code for Linux-i386 which writes the string "hello, world" and a LF
character (hexadecimal values 68 65 6C 6C 6F 2C 20 77 6F 72 6C 64 0A) to
stdout (file descriptor 1), then executes /usr/bin/id with the argument "-u"
(hexadecimal values 2D 75).

The code must be relocatable and must contain no NUL bytes. It will be mapped
read-write-execute. The stack is mapped read-write (NOT execute).

On entry, the instruction pointer (EIP) points to the first byte of your
code. The stack pointer (ESP) is valid. All other registers contain unknown
values. Write the code as compact as possible. Use AT&T or Intel syntax at your
own preference. Hand in the assembly file.
