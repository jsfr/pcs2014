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
; Push array cell #2
xor eax, eax
push eax
push word `-u`
mov ecx, esp

; Push array cell #1
push eax
push byte `d`
push word `/i`
push `/bin`
push `/usr`
mov ebx, esp

; Push envp and null pointer of argc
push eax
mov edx, esp

; Push rest of argc
push ecx
push ebx
mov ecx, esp

; EAX = 0; Perform execve with /usr/bin/id -u
mov al, SYS_execve
int 0x80