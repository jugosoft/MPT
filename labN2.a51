JMP START

DATA:
DB        01
DB        02
DB        03
DB        04
DB        05
DB        06
DB        07

START:
SETB		  RS0
;1
MOV 10h, 	#28
;2
MOV R2, 	#27
;5
MOVC	A,  @A+PC     ;после выполнения 
                    ;этой инструкции в А БУдет 0xD2 
;3
SETB 		  RS1
MOV 10h, 	#28
MOV R1, 	#27
MOV R3, 	#10
MOV R4, 	#28
;3
MOV A,    R1
MOV @R0,	A
MOV 11h,	@R0
;4
MOV	DPTR,	#DATA	
MOVC A, 	@A+DPTR
MOVC A, 	@A+DPTR
MOVC A, 	@A+DPTR
MOVC A, 	@A+DPTR
MOVC A, 	@A+DPTR
MOVC A, 	@A+DPTR
MOVC A, 	@A+DPTR

;6
MOV 81h,  #30h
MOV R1,   #03h
PUSH ACC
MOV ACC,	#0
PUSH ACC
POP ACC
POP ACC
