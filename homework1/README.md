Install
=======
Install assembler and emulator on MacOS:

> brew install nasm
> brew install qemu

Compile
=======
Compile to binary:

> nasm -f bin main.asm -o out.bin

Run
===
Run on i386 architecture in god mode:

> qemu-system-i386 -fda bin.out
