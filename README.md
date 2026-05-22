# PacOS
Here i will write my os full on NASM
Now i am dont know work my loader or no, but i think core work

Guys, if your pc on uefi and dont have csm module my os dont work on your pc. I am now write only bios version.
# What i am doing now?
I am make core.asm, cant say anything other
# Info
I am add bin files, you can load it using dd in linux, Loader.bin to seek=0 Core.bin to seek=1 and bs=512, and my core will work.

So now funcion print dont work on core so you can understand this work if the screen just work. I am replace init video to core.

I am and add a script to load bins to flash. Important Loadtousb need to was in one director with bins!

# Script to load to usb flash
This script work only on linux, i am dont know how to make this script for windows, there no dd, no normal sys call.

Please lear yourself how load bins to flash on windows.
