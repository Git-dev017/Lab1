all: hello.o greetings.a
	gcc -o hello_bin hello.o -L. -greetings
  
hello.o: hello.c
	gcc -c hello.c

greetings.a: libhello.o libgoodbye.o
	ar cr greetings.a libhello.o libgoodbye.o

libhello.o: libhello.c
	gcc -c libhello.c

libgoodbye.o: libgoodbye.c
	gcc -c libgoodbye.c

clean:
	rm -f *.o *.a hello_bin
	