bits 32
%include "include/all.asm"

;; WRITE
; Push string on stack
push byte 0x0A
push `orld`
push `o, w`
push `hell`

; Perform write
push byte 13
pop edx
mov ecx, esp
xor ebx, ebx
push byte SYS_write
pop eax
int 0x80

;; EXECVE
; Cell two of array
xor eax, eax
push eax
push word `-u`
mov ecx, esp

; Cell one of array
push eax
push byte `d`
push word `/i`
push `/bin`
push `/usr`
mov ebx, esp

; Create envp and the null pointer of argc
push eax
mov edx, esp

; Create argc
push ecx
push ebx
mov ecx, esp

; Perform execve with /usr/bin/id -u
push byte SYS_execve
pop eax
int 0x80

; Exit the program
xor ebx, ebx
push byte SYS_exit
pop eax
int 0x80