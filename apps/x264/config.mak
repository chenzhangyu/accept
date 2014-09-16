prefix=/usr/local
exec_prefix=${prefix}
bindir=${exec_prefix}/bin
libdir=${exec_prefix}/lib
includedir=${prefix}/include
ARCH=X86_64
SYS=LINUX
CC=gcc
CFLAGS=-O4 -ffast-math  -Wall -I. -DHAVE_MALLOC_H -DARCH_X86_64 -DSYS_LINUX -DHAVE_PTHREAD -s -fomit-frame-pointer
ALTIVECFLAGS=
LDFLAGS= -lm -lpthread -s
AS=
ASFLAGS=-f elf -m amd64
EXE=
VIS=no
HAVE_GETOPT_LONG=1
DEVNULL=/dev/null
ECHON=echo -n
CONFIGURE_ARGS= '--enable-pthread' '--disable-asm'
