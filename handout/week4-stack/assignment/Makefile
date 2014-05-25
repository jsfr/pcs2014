.PHONY: all clean

all: exploit

exploit: exploit.c shellcode.h
	gcc -g -Wall -Werror -o $@ $<
	#gcc -m32 -g -Wall -Werror -o $@ $<

shellcode.h: shellcode
	hexdump -v -e '/1 "0x%02X,"' shellcode >shellcode.h

shellcode: shellcode.asm
	nasm shellcode.asm

clean:
	rm -f exploit shellcode.h shellcode
