#! /bin/bash

nasm -f bin -o loader.bin loader.asm

dd status=noxfer conv=notrunc if=loader.bin of=loader.flp

qemu -fda loader.flp
