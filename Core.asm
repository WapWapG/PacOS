section .text
global start_core
[bits 16]
start_core:
;сброс позиции курсора
mov ah, 02h
mov dh, 0
mov dl, 2
int 10h
;очистка первого символа для теста
mov al, 'H'
call print
print:
mov ah, 0Ah
mov cx, 1
int 10h
call update_cursor
ret
update_cursor:
;Обновление позиции курсора
mov ah, 03h
int 10h
add dl, 1
mov ah, 02h
int 10h
ret

times 510-($-$$) db 0
dw 0AA55h
