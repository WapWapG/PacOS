section .text
global start_core
[bits 16]
[org 0x8000]
start_core:
mov ds, ax
mov es, ax
mov ss, ax
mov cx, ax
;Инит видео
mov ah, 00h
int 10h
;сброс позиции курсора
mov ah, 02h
mov dh, 0
mov dl, 2
int 10h
;вывод текста
mov al, 'H'
call print
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

times 512-($-$$) db 0
