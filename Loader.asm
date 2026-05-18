section .text
global start
;указываем 16-битный режим
[bits 16]
[org 0x7C00]
start:
mov ax, 0
mov ds, ax
mov es, ax
mov ss, ax
;Инит видео
mov ah, 00h
int 10h
;сброс позиции курсора
mov ah, 02h
mov dh, 0
mov dl, 2
int 10h
;Wrtie "Loading..."
;Пишет "Loading..."
mov al, 'L'
call print
mov al, 'o'
call print
mov al, 'a'
call print
mov al, 'd'
call print
mov al, 'i'
call print
mov al, 'n'
call print
mov al, 'g'
call print

mov ah, 02h
mov al, 0
int 13h
mov al, '.'
call print
pop [es::bx]
jmp start_core
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
;Заполняю оставшиеся пространство
times 510-($-$$) db 0
dw 0AA55h
