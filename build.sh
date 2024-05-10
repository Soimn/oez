#!/bin/bash

nasm loader.asm -f bin -o loader.bin
#dd if=/dev/zero of=disk.img bs=512 count=8388608
dd if=/dev/zero of=disk.img bs=512 count=32
dd if=./loader.bin of=disk.img bs=512 count=1 conv=notrunc
