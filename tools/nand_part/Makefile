# Copyright (C) 2014 Alexey Edelev <semlanik@gmail.com>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <http://www.gnu.org/licenses/>.

include ../tools.env

TARGET = nand-part
SOURCES = nand-part-main.c

EXTRA_OBJECTS = nand-part-a10.o \
	nand-part-a20.o
HEADERS = include/nand-part-a20.h \
	include/nand-part-a10.h

INSTALL_DIR = bin

include ../tools.rules

nand-part-a10.o: nand-part.c
	$(CC) -c $(CFLAGS) $(INCLUDES) -D A10 -o $@ $^
nand-part-a20.o: nand-part.c
	$(CC) -c $(CFLAGS) $(INCLUDES) -D A20 -o $@ $^
