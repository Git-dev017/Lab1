#Makefile for project
all: main.o greetings.a
	gcc -o hello_bin main.o -L. -greetings
  
main.o: main.c
	gcc -c main.c

greetings.a: libhello.o libgoodbye.o
	ar cr greetings.a libhello.o libgoodbye.o

libhello.o: libhello.c
	gcc -c libhello.c

libgoodbye.o: libgoodbye.c
	gcc -c libgoodbye.c

clean:
	rm -f *.o *.a hello_bin