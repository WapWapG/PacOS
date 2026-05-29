section .text
global start_core
[bits 16]
[org 0x8000]
start_core:
mov ax, 0
mov ds, ax
mov es, ax
mov ss, ax
mov cx, ax
;Инит видео
mov ah, 00h
int 10h
;сброс позиции курсора
mov ah, 02h
mov dh, 5
mov dl, 2
int 10h
;вывод текста
mov al, 'W'
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
mov ah, 02h
mov bh, 0
add dl, 1
int 10h
ret

times 512-($-$$) db 0
