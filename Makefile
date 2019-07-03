# swm - Snazzy Window Manager
# See LICENSE file for copyright and license details.

include config.mk

SRC = drw.c swm.c util.c
OBJ = ${SRC:.c=.o}

all: options swm

options:
	@echo swm build options:
	@echo "CFLAGS   = ${CFLAGS}"
	@echo "LDFLAGS  = ${LDFLAGS}"
	@echo "CC       = ${CC}"

.c.o:
	${CC} -c ${CFLAGS} $<

${OBJ}: config.h config.mk

config.h:
	cp config.def.h $@

swm: ${OBJ}
	${CC} -o $@ ${OBJ} ${LDFLAGS}

clean:
	rm -f swm ${OBJ} swm.tar.gz

dist: clean
	mkdir -p swm
	cp -R LICENSE Makefile config.def.h config.mk\
		drw.h util.h ${SRC} transient.c swm
	tar -cf swm.tar swm
	gzip swm.tar
	rm -rf swm

install: all
	mkdir -p ${DESTDIR}${PREFIX}/bin
	cp -f swm ${DESTDIR}${PREFIX}/bin
	chmod 755 ${DESTDIR}${PREFIX}/bin/swm

uninstall:
	rm -f ${DESTDIR}${PREFIX}/bin/swm\

.PHONY: all options clean dist install uninstall
