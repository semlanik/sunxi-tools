PWD=$(shell pwd)
.PHONY:tools binaries

TOOLS = \
	bootinfo \
	fel \
	nand_part \
	fexc \
	phoenix_info \
	pio

CROSS_TOOLS = \
	meminfo

BINARIES = \
	boot_head \
	fel-sdboot \
	jtag-loop \
	fel-pio \
	fel-copy


$(TOOLS): FORCE
	$(MAKE) -C tools/$@
tools:$(TOOLS)

$(BINARIES): FORCE
	$(MAKE) -C binaries/$@
binaries:$(BINARIES)

$(CROSS_TOOLS):FORCE
	$(MAKE) -C tools/$@
cross-tools:$(CROSS_TOOLS)

tools-clean:
	for d in $(TOOLS); do $(MAKE) -C tools/$$d clean; done

binaries-clean:
	for d in $(BINARIES); do $(MAKE) -C binaries/$$d clean; done

cross-tools-clean:
	for d in $(CROSS_TOOLS); do $(MAKE) -C tools/$$d clean; done

tools-install:
	for d in $(TOOLS); do $(MAKE) -C tools/$$d install; done

tools-uninstall:
	for d in $(TOOLS); do $(MAKE) -C tools/$$d uninstall; done

FORCE:
