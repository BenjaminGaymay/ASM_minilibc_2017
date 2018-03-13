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

alUpp:	cmp al, 97
	jb blUpp
	cmp al, 123
	jae blUpp
	cmp bl, 65
	jb blUpp
	cmp bl, 90
	jae blUpp
	sub al, 32

blUpp:	cmp bl, 97
	jb comp
	cmp bl, 123
	jae comp
	cmp al, 65
	jb comp
	cmp al, 90
	jae comp
	sub bl, 32

comp:	cmp al, bl
	jne diff
	inc rcx
	jmp while

diff:	sub al, bl
	movsx rax, al
	ret
