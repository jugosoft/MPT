mov 30h, #4h
mov 31h, #6h
mov 32h, #7h
mov 33h, #20h
mov 34h, #1h
mov 35h, #8h
mov 36h, #9h
mov 37h, #22h
mov 38h, #30h
mov 39h, #2Ah

mov r0, #30h; начало
mov r7, #0FFh ; щётчик
mov r4, #00h   ; счётчик подходящих
mov r2, #5h
mov r3, #20h
mov 20h, r2  ; записываем границы в 20h and 21h
mov 21h, r3  
mov r1, 40h
nxt:
mov a, @r0 
cjne a, #20, lower ; проверяем верхнюю границу
sjmp out   ; если больше - выходим
lower: jnc out  
cjne a, #4, limit ; проверяем нижнюю границу
sjmp out  ; если меньше
limit:  
jc out  

inc r4  

movx @r1, a
inc r1
out:     
inc r0  ; следующий байт
jz finish
djnz r7, nxt
finish:
end
