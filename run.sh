#!/bin/bash
./build.sh
qemu-system-x86_64 -drive format=raw,file=disk.img -nographic
