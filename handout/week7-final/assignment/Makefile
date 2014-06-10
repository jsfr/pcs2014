.PHONY: all clean

all: stack-exploit www-exploit

stack-exploit: stack-exploit.c stack-shellcode.h
	gcc -g -Wall -Werror -o $@ $<
	#gcc -m32 -g -Wall -Werror -o $@ $<

stack-shellcode.h: stack-shellcode
	hexdump -v -e '/1 "0x%02X,"' $< >$@

stack-shellcode: stack-shellcode.asm
	nasm $<

www-exploit: www-exploit.c www-shellcode.h
	gcc -g -Wall -Werror -o $@ $<
	#gcc -m32 -g -Wall -Werror -o $@ $<

www-shellcode.h: www-shellcode
	hexdump -v -e '/1 "0x%02X,"' $< >$@

www-shellcode: www-shellcode.asm
	nasm $<

clean:
	rm -f stack-exploit stack-shellcode.h stack-shellcode
	rm -f www-exploit www-shellcode.h www-shellcode
