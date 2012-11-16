
CC=gcc
TARGETS=ma libcma.so lansdon_test clean_lite
OPTIONS=-g

all: $(TARGETS)

libcma.so: cma.o
	$(CC) $(OPTIONS) -shared cma.o -o libcma.so
cma.o: cma.c cma.h
	$(CC) $(OPTIONS) -c cma.c -o cma.o
ma: ma.o cma.o

lansdon_test: lansdon_test.o cma.o
	$(CC)  lansdon_test.o -o lansdon_test -L. -lcma
lansdon_test.o: lansdon_test.c cma.h cma.c
	$(CC) $(OPTIONS) -c lansdon_test.c -o lansdon_test.o
clean:
	-rm *.o
	-rm lansdon_test
	-rm libcma.so
clean_lite:
	-rm *.o

