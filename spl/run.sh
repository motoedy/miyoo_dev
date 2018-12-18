#!/bin/sh
sudo rm flashimg.bin
sudo dd if=/dev/zero of=flashimg.bin bs=1M count=8
sudo dd if=u-boot-sunxi-with-spl.bin of=flashimg.bin bs=1K conv=notrunc
sudo dd if=suniv-f1c500s-miyoo.dtb of=flashimg.bin bs=1K seek=1024 conv=notrunc
sudo dd if=zImage of=flashimg.bin bs=1K seek=1088 conv=notrunc
sudo sunxi-fel -p spiflash-write 0 flashimg.bin
