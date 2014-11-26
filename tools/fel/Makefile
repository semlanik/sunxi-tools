include ../tools.env

LIBUSB = libusb-1.0
override CFLAGS += `pkg-config --cflags $(LIBUSB)`
LIBS += `pkg-config --libs $(LIBUSB)`

TARGET = fel
SOURCES = fel.c

INSTALL_DIR = /usr/bin
include ../tools.rules