<<<<<<< HEAD
ma: ma.o cma.o

wbslage_test: wbslage_test.o
	gcc wbslage_test.o -o wbslage_test
wbslage_test.o: wbslage_test.c
	gcc -c wbslage_test.c
=======

CC=gcc
TARGETS=libcma.so lansdon_test clean_lite
OPTIONS=-g

all: $(TARGETS)

libcma.so: cma.o
	$(CC) $(OPTIONS) -shared cma.o -o libcma.so
cma.o: cma.c cma.h
	$(CC) $(OPTIONS) -c cma.c -o cma.o
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
>>>>>>> a08c0fc88c3ddc30e074608521c9ab88854a178a

