Install
=======
Install assembler and emulator

brew install nasm
brew install qemu

Compile
=======
Compile to binary

nasm -f bin main.asm -o out.bin

Run
===
Run on i386 architecture

qemu-system-i386 -fda bin.out
