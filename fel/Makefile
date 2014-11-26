LIBUSB = libusb-1.0
override CFLAGS += `pkg-config --cflags $(LIBUSB)`
LIBS += `pkg-config --libs $(LIBUSB)`

TARGET = fel
SOURCES = fel.c

include ../tools.rules
