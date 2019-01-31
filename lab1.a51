start:
	call first
	call second
	call third
	call fourth
	call fifth
	call sixth
	call seventh
	call eigth
	nop
	nop
	nop
	jmp start

first:
	MOV A,#15
	add A,#1
	nop
	nop
	nop
	ret

second:
	mov Рђ,#15
	add A,#-14D
	nop
	nop
	nop
	ret

third:
	mov A,#25
	subb A,#24
	nop	
	nop
	ret

fourth:
	mov A,#24

	subb A,#25
	subb A,#0
	nop
	nop
	nop
	ret

fifth:
	mov A,#-1
	inc A
	nop
	nop 
	ret
	
sixth:
	mov A,#-126
	add A,#-2
	nop
	nop
	nop
	ret

seventh:
	mov A,#00Рќ
	add A,#100D
	mov B,#2D
	mul AB

eigth:
	mov A,1234h
	mov B,0ah
	div AB
	nop
	nop
	nop
	ret

nineth:
	mov R0,#127
	mov R1,#5	
	mov R2,#127
	mov R3,#15	
	mov A,R0
	add A,R1
	mov R4,A
	mov A,R2
	addc A,R3	
	mov R5,A
	ret
  
end
	
