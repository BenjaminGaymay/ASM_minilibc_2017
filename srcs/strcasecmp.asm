BITS 64

global strcasecmp:
section .text

strcasecmp:
	xor rax, rax
	xor rbx, rbx
	xor rcx, rcx

while:	mov al, byte[rdi + rcx]
	mov bl, byte[rsi + rcx]
	cmp al, 0
	jz diff
	cmp bl, 0
	jz diff
	jmp isUpp

alUpp:	cmp al, 123
	jae isUpp
	sub al, 32
	jmp isUpp

blUpp:	cmp bl, 123
	jae comp
	sub bl, 32
	jmp isUpp

isUpp:	cmp al, 97
	jae alUpp
	cmp bl, 97
	jae blUpp

comp:	cmp al, bl
	jne diff
	inc rcx
	jmp while

diff:	sub al, bl
	movsx rax, al
	ret
