_s$ = -32						; size = 12
_b$ = -20						; size = 20
_main	PROC
	sub	esp, 32					; 00000020H
	push	30					; 0000001eH
	push	20					; 00000014H
	push	10					; 0000000aH
	push	1
	lea	ecx, DWORD PTR _b$[esp+48]
	call	??0box@@QAE@HHHH@Z			; box::box
	push	40					; 00000028H
	push	2
	lea	ecx, DWORD PTR _s$[esp+40]
	call	??0sphere@@QAE@HH@Z			; sphere::sphere
	mov	eax, DWORD PTR _b$[esp+32]
	mov	edx, DWORD PTR [eax]
	lea	ecx, DWORD PTR _b$[esp+32]
	call	edx
	mov	eax, DWORD PTR _s$[esp+32]
	mov	edx, DWORD PTR [eax]
	lea	ecx, DWORD PTR _s$[esp+32]
	call	edx
	xor	eax, eax
	add	esp, 32					; 00000020H
	ret	0
_main	ENDP
