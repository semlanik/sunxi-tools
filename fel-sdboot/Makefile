include ../binaries.env

ELFS = fel-sdboot.elf
TARGETS = fel-sdboot.bin

SOURCES = fel-sdboot.c
LDSCRIPT = fel-sdboot.lds
EXTRA_DEPS = fel-sdboot.sunxi
include ../binaries.rules

fel-sdboot.sunxi: fel-sdboot.bin
	-if $$(which mksunxiboot); then mksunxiboot $^ $@; fi