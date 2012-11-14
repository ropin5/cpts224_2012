all: stidhamjason

stidhamjason: stidhamjason_test.c
	gcc -o run stidhamjason_test.c

ma: ma.o cma.o
