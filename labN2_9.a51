;9	Переписать в стек, расположенный в памяти с адреса,
;массив А из 10 восьмиразрядных(16) чисел. 
;Выполнить операцию суммирования над ними.

JMP START
DATA:
;DB  00q, 002o
DB 001h
DB 003h
DB 005h
DB 007h
DB 009h
DB 00Ah
DB 00Bh
DB 00Ch
DB 00Dh
DB 01Fh

START:
MOV  DPTR, #DATA	
MOV  R1,  #00h
MOV  R2,  #010
LOOP:
MOVC A,   @A+DPTR
PUSH ACC
MOV  A,   R1
ADD  A,   R0
MOV  R1,  A
INC R0 
DJNZ R2,  LOOP
END
