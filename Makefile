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

cleangitignore:
	rm -f .gitignore

$(TOOLS): FORCE cleangitignore
	$(MAKE) -C $@
tools:$(TOOLS)

$(BINARIES): FORCE
	$(MAKE) -C $@
binaries:$(BINARIES)

$(CROSS_TOOLS):FORCE
	$(MAKE) -C $@
cross-tools:$(CROSS_TOOLS)

clean-tools:
	for d in $(TOOLS); do $(MAKE) -C $$d clean; done

clean-binaries:
	for d in $(BINARIES); do $(MAKE) -C $$d clean; done

clean-cross-tools:
	for d in $(CROSS_TOOLS); do $(MAKE) -C $$d clean; done

install-tools:
	for d in $(TOOLS); do $(MAKE) -C $$d install; done

uninstall-tools:
	for d in $(TOOLS); do $(MAKE) -C $$d uninstall; done

FORCE:
