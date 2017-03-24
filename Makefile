all: hello.o greetings.a
	gcc -o hello hello.o -L. -lib_hello
  
hello.o: hello.c
	gcc -c hello.c

lib_hello.a: libhello.o libgoodbye.o
	ar cr lib_hello.a libhello.o libgoodbye.o

libhello.o: libhello.c
	gcc -c libhello.c

libgoodbye.o: libgoodbye.c
	gcc -c libgoodbye.c

clean:
	rm -f *.o *.a hello