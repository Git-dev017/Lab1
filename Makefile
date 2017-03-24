all: hello.o libgoodbye.a
	gcc hello.o libgoodbye.a libhello.so -o hello

libhello.o: libhello.c hello.h
	gcc -c libhello.c

libgoodbye.o: libgoodbye.c hello.h
	gcc -c libgoodbye.c

hello.o: hello.c hello.h
	gcc -c hello.c

libgoodbye.a: libgoodbye.o
	ar rv libgoodbye.a libgoodbye.o

libhello.so: libhello.o
	gcc -shared -o libhello.so libhello.o

clean:
	rm -f *.o *.a hello