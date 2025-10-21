Simple bootloader 
=================
Simple bootloader printing out all registers.

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
