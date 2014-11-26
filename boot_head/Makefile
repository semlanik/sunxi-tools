include $(PWD)/binaries.rules
EXTRA_DEPS = \
	$(BOOT_HEADS_BINS) \
	boot_head.S \
	boot_head.lds

BOOT_HEADS = boot_head_sun3i \
	boot_head_sun4i \
	boot_head_sun5i
BOOT_HEADS_ELF = $(addsuffix .elf, $(BOOT_HEADS)) 
BOOT_HEADS_BINS = $(addsuffix .bin, $(BOOT_HEADS)) 

$(BOOT_HEADS_ELF):
	$(CC) $(CFLAGS) boot_head.S -o $@ -T boot_head.lds -Wl,-N -DMACHID=0x1094
	#sun4i -DMACHID=0x1008
	#sun5i -DMACHID=0x102A

$(BOOT_HEADS_BINS): $(BOOT_HEADS_ELF)
	$(OBJCOPY) -O binary $@ `echo $@ | sed s/.elf/.bin/`

include $(PWD)/basic.rules
