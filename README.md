# PacOS
Here i will write my os full on NASM

Guys, if your pc on uefi and dont have csm module my os dont work on your pc. I am now write only bios version.

On last update i add img of PacOS so you can load it to usb-flash.
# What i am doing now?
I am make core.asm, cant say anything other
# Info
I am add bin files, you can load it using dd in linux, Loader.bin to seek=0 Core.bin to seek=1 and bs=512, and my core will work.

So now funcion print dont work on core so you can understand this work if on screen write "e". I am replace init video to core.

I am and add a script to load bins to flash. Important Loadtousb need to was in one director with bins.

===============================Preview==============================================

Core print "e":

<img width="642" height="451" alt="изображение" src="https://github.com/user-attachments/assets/d2e80465-4c47-444e-b1df-7ae3fb8d7f0b" />

# Script to load to usb flash
This script work only on linux, i am dont know how to make this script for windows, there no dd, no normal sys call.

If you wanna load this os on windows use img, i am add img in repo.
Or use Qemu-system

# Tech info
This os write to x86, i am realise some function: print and update_cursor. 
Now i am only write working loader so core dont have many function but i am work with this.

If you wanna write a symbol just load to al a symbol in '' and write "call print", so core will load this symbol to screen. 
Now update_cursor dont work and i dont know why, i fix this soon.
