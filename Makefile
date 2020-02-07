# libwordexp Makefile

LIB=	libwordexp.a
OBJS=	wordexp.o

CFLAGS+=-I.

all: ${OBJS}
	${AR} cru ${LIB} ${OBJS}
	${RANLIB} ${LIB}

install:
	install -c -m 444 ${LIB} ${PREFIX}/lib
	install -c -m 444 wordexp.h ${PREFIX}/include

clean:
	rm -f ${LIB} ${OBJS}
