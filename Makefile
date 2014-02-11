# Generated automatically from Makefile.in by configure.

CC = gcc
VERSION = 0.1
CFLAGS = -g -O2
LIBS = -lcrypt -lpam 
INSTALL=/bin/install -c
prefix=/usr/local
bindir=$(prefix)${exec_prefix}/bin
FLAGS=$(CFLAGS)  -DSTDC_HEADERS=1 -DHAVE_LIBPAM=1 -DHAVE_LIBCRYPT=1 -DHAVE_SHADOW_H=1 
OBJ=Authenticate.o common.o telnet-protocol.o settings.o 
EXE=ptelnetd

all: $(OBJ) main.c
	@cd libUseful-2.0; $(MAKE)
	gcc -g $(LIBS) -o$(EXE) $(OBJ) main.c libUseful-2.0/libUseful-2.0.a


Authenticate.o: Authenticate.c Authenticate.h
	gcc -g $(FLAGS) -c Authenticate.c

settings.o: settings.c settings.h
	gcc -g $(FLAGS) -c settings.c

telnet-protocol.o: telnet-protocol.c telnet-protocol.h
	gcc -g -c telnet-protocol.c

common.o: common.c common.h
	gcc -g -c common.c

clean:
	rm -f *.o */*.o */*.a */*.so $(EXE)

