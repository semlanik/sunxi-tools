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
	boot_head
# 	fel-copy \
# 	fel-gpio \
# 	fel-pio \
# 	fel-sdboot \
# 	jtag-loop

cleangitignore:
	rm -f .gitignore

$(TOOLS): FORCE cleangitignore
	$(MAKE) PWD="$(PWD)" -C $@
tools:$(TOOLS)

$(BINARIES): FORCE
	$(MAKE) PWD="$(PWD)" -C $@
binaries:$(BINARIES)

$(CROSS_TOOLS):FORCE
	$(MAKE) PWD="$(PWD)" -C $@
cross-tools:$(CROSS_TOOLS)


clean-tools:
	for d in $(TOOLS); do $(MAKE) PWD="$(PWD)" -C $$d clean; done

clean-binaries:
	for d in $(BINARIES); do $(MAKE) PWD="$(PWD)" -C $$d clean; done

clean-cross-tools:
	for d in $(CROSS_TOOLS); do $(MAKE) PWD="$(PWD)" -C $$d clean; done

FORCE:
