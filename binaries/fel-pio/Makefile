include ../binaries.env

ELFS = fel-pio.elf
TARGETS = fel-pio.bin
EXTRA_DEPS = fel-pio.nm

SOURCES = fel-pio.c
LDSCRIPT = fel-pio.lds

include ../binaries.rules
fel-pio.nm: fel-pio.elf
	$(NM) $^ | grep -v " _" >$@
