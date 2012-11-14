CC=gcc
.PHONY: clean

all: stidhamjason

stidhamjason: stidhamjason_test.c
	$(CC) -o run stidhamjason_test.c

ma: ma.o cma.o

clean:
	-rm *.0
