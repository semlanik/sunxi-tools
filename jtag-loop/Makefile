include ../binaries.env

ELFS = jtag-loop.elf 
TARGETS = jtag-loop.bin
EXTRA_DEPS = jtag-loop.sunxi

SOURCES = jtag-loop.c
LDSCRIPT = jtag-loop.lds
include ../binaries.rules
jtag-loop.sunxi: jtag-loop.bin
	-if $$(which mksunxiboot); then mksunxiboot $^ $@; fi