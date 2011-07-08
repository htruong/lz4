all: lz4.32 lz4.64

lz4.64: lz4.c lz4.h main.c
	gcc -g -O3 -I. -Wall -W lz4.c main.c -o lz4

lz4.32: lz4.c lz4.h main.c
	gcc -m32 -g -O3 -I. -Wall -W lz4.c main.c -o lz4-32

clean:
	rm -f core *.o lz4.32.exe lz4.64.exe

install:
	cp lz4 /usr/local/bin
	cp lz4-32 /usr/local/bin

