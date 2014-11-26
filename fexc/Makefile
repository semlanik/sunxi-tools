TARGET = fecx
SOURCES = \
	fexc.c \
	script_bin.c \
	script.c \
	script_fex.c \
	script_uboot.c

EXTRA_DEPS = \
	fex2bin \
	bin2fex

HEADERS = \
	include/script.h \
	include/script_uboot.h \
	include/script_bin.h \
	include/script_fex.h

include ../tools.rules

fex2bin bin2fex:
	ln -s $(TARGET) $@