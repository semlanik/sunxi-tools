include ../binaries.env

sun3i_MATCHID=0x1094
sun4i_MATCHID=0x1008
sun5i_MATCHID=0x102A

BOOT_HEADS = boot_head_sun3i \
	boot_head_sun4i \
	boot_head_sun5i

ELFS = $(addsuffix .elf, $(BOOT_HEADS)) 
TARGETS = $(addsuffix .bin, $(BOOT_HEADS)) 

SOURCES = boot_head.S
LDSCRIPT = boot_head.lds
DEFINES=-DMACHID=$($(subst boot_head_,,$(subst .elf,,$@))_MATCHID)
include ../binaries.rules
