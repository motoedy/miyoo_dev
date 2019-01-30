#!/bin/sh
dd if=/dev/zero of=flashimg.bin bs=1M count=8
dd if=u-boot-sunxi-with-spl.bin of=flashimg.bin bs=1K conv=notrunc
dd if=suniv-f1c500s-miyoo.dtb of=flashimg.bin bs=1K seek=1024 conv=notrunc
dd if=zImage of=flashimg.bin bs=1K seek=1088 conv=notrunc
