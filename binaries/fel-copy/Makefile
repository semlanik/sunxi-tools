include ../binaries.env

.DEFAULT: all

all: fel-copy.bin

fel-copy.bin: fel-copy.o
	$(OBJCOPY) -O binary fel-copy.o fel-copy.bin 

fel-copy.o:
	$(CC) $(CFLAGS) -c fel-copy.c -o fel-copy.o

clean:
	rm -f fel-copy.bin fel-copy.o