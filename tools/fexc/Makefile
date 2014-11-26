include ../tools.env

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

INSTALL_DIR = /usr/bin

include ../tools.rules
install: $(TARGET) fex2bin bin2fex
	install -o root -m 755 -t $(INSTALL_DIR) $^
uninstall:
	rm -f $(addprefix $(INSTALL_DIR)/,$(TARGET) fex2bin bin2fex)
fex2bin bin2fex:
	ln -s $(TARGET) $@