Bootsector
==========
Bootsector for x86/x86-64/AMD64 printing out all registers.

Install
-------
Install assembler and emulator on MacOS:

> brew install nasm

> brew install qemu

Compile
-------
Compile to binary:

> nasm -f bin main.asm -o out.bin

View the binary:

> hexdump -C out.bin

Run
---
Run the binary on i386 architecture in 16b real mode:

> qemu-system-i386 -fda out.bin

OR 

Copy to your flash disc and run it on your machine. Will work only on Intel or AMD processors. In case of UEFI, turn on legacy mode boot and turn off secure boot.
