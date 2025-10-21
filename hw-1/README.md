Bootsector
==========
Simple bootsector printing out all registers.

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

Copy to your flash disc and run it on your machine. In case of UEFI, turn on legacy mode boot and turn off secure boot.
