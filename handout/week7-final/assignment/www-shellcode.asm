[bits 32]

	; envp = NULL
	xor edx, edx

	; filename = "/bin/sh"
	push byte 0x68
	push word 0x732f
	push dword 0x6e69622f
	mov ebx, esp

	; argv = { filename, NULL }
	push edx  ; NULL
	push ebx  ; "/bin/sh"
	mov ecx, esp

	; syscall execve
	push byte 11
	pop eax
	int 0x80
