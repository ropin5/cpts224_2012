
CC=gcc
TARGETS=ma libcma.so usakgb_test.o usakgb_test
OPTIONS=-g -fPIC

all: $(TARGETS)

libcma.so: cma.o
	$(CC) $(OPTIONS) -shared cma.o -o libcma.so
cma.o: cma.c cma.h
	$(CC) $(OPTIONS) -c cma.c -o cma.o
ma: ma.o cma.o

usakgb_test: usakgb_test.o cma.o
	$(CC)  usakgb_test.o cma.o -o usakgb_test
usakgb_test.o: usakgb_test.c
	$(CC) -c usakgb_test.c

clean:
	-rm *.o
	-rm $(TARGETS)

