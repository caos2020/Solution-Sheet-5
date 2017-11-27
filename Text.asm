.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
	pr BYTE "Result :)",0
	p  BYTE  "enter number of pennies ",0
	p1 BYTE  "enter number of nickels ",0
	p2 BYTE  "enter number of dimes ",0
	p3 BYTE  "enter number of quarters ",0
	p4 BYTE  "enter number of fifty-cent pieces ",0
	p5 BYTE  "enter number of dollar  ",0
	pd DWORD ?
	t  DWORD ?
	r  BYTE 11 DUP(?),0
	m  BYTE "The toatal you enter is "
	rd BYTE 11 DUP(?)
	   BYTE "  Dollar and "
	   ;BYTE ","
	rp BYTE 11 DUP(?)
	   BYTE "  Pennies ",0
	   ;BYTE "  Dollar  ",0

.CODE
_MainProc PROC 
	input p ,r,11
	atod r
	mov pd,eax

	
	input p1 ,r,11
	atod r
	mov t,eax
	mov eax,5
	mul t
	add pd,eax
	
	input p2 ,r,11
	atod r
	mov t,eax
	mov eax,10
	mul t
	add pd,eax

	input p3,r,11
	atod r
	mov t,eax
	mov eax,25
	mul t
	add pd,eax

	input p4 ,r,11
	atod r
	mov t,eax
	mov eax,50
	mul t
	add pd,eax

	input p5 ,r,11
	atod r
	mov t,eax
	mov eax,100
	mul t
	add eax,pd
	mov ebx,100
	div ebx


	dtoa rp,edx
	dtoa rd,eax
	output pr,m

	mov eax,0 
	ret

_MainProc ENDP

END