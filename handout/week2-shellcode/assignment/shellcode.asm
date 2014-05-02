bits 32
%include "include/all.asm"

# Store string on stack
push byte 0x0A
push `orld`
push `o, w`
push `hell`

# Perform write
push byte 13
pop edx
mov ecx, esp
xor ebx, ebx
push byte SYS_write
pop eax
int 0x80

# Perform execve with /usr/bin/id -u

push byte SYS_execve
pop eax
int 0x80

# Exit the program
xor ebx, ebx
push byte SYS_exit
pop eax
int 0x80