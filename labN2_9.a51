;9	Переписать в стек, расположенный в памяти с адреса,
;массив А из 10 восьмиразрядных(16) чисел. 
;Выполнить операцию суммирования над ними.

JMP START         ;переходим на метку START:
DATA:
;DB  00q, 002o    ;эдсим не работает с 8-ми числоми
DB 001h           ;так что используем 16-е
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
MOV  DPTR, #DATA	;устанавливаем DATA POINTER на данные
MOV  R1,  #00h
MOV  R2,  #010    ;количество итераций цикла
LOOP:             ;цикл
MOVC A,   @A+DPTR ;пишем в аккумулятор данные
PUSH ACC          ;и из аккумулятора в стэк
MOV  A,   R1
ADD  A,   R0      ;выполняем суммирование согласно заданию
MOV  R1,  A       ;сохраняем промежуточный результат суммирования
INC R0            
DJNZ R2,  LOOP    ;к следующей итерации цикла
END
