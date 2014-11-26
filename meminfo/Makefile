TARGET = meminfo
SOURCES = \
	meminfo.c

override CFLAGS := $(CFLAGS) -static
ifeq ($(DEBUG),1)
	override CFLAGS := $(CFLAGS) -g
endif

include $(PWD)/tools.rules