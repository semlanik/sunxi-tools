include ../tools.env

TARGET = nand-part
SOURCES = nand-part-main.c

EXTRA_OBJECTS = nand-part-a10.o \
	nand-part-a20.o
HEADERS = include/nand-part-a20.h \
	include/nand-part-a10.h

INSTALL_DIR = /usr/bin

include ../tools.rules

nand-part-a10.o: nand-part.c
	$(CC) -c $(CFLAGS) $(INCLUDES) -D A10 -o $@ $^
nand-part-a20.o: nand-part.c 
	$(CC) -c $(CFLAGS) $(INCLUDES) -D A20 -o $@ $^
