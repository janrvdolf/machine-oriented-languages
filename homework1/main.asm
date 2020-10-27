org 7c00h
	call 0:main
main:
	push DX
	mov DX, SP
	push CX
	push BX
	push AX
	pushf
	push SS
	push ES
	push DS
	add sp, 16
	pop ax
    sub ax, 5
	pop bx
	sub sp, 20
	push bx
	push ax
	add dx, 2
	push DX ;skryty mov SP
	push BP
	push DI
	push SI

	xor AX, AX
	mov SS, AX
	mov DS, AX
	mov AL, 3
	int 10h
	cld
	mov AX, 0B800h
	mov ES, AX
	mov SI, text
	mov AH, 0h
	xor DI, DI
	mov CX, 14
print_cycle:
	pop BX
	call print
	loop print_cycle
	jmp $
print:
	push CX
	mov CL, 2
	add AH, 00001001b
print_exec:
	lodsb
	stosw
	loop print_exec
	mov al, ':'
	stosw
print_number:
	mov CL, 4
print_number_exec:
	rol BX, 4
	mov AL, BL
	and AL, 0Fh
	or AL, 0x30
	cmp AL, '9'
	jle print_number_not_a_letter
	add AL, 'A' - '9' - 1
print_number_not_a_letter:
	stosw
	loop print_number_exec
	xor al, al
	stosw
	pop CX
	ret
text: 
	db "SIDIBPSPIPCSDSESSSFLAXBXCXDX" 
	times 510 - ($ - $$) db 0
	db 055h, 0AAh