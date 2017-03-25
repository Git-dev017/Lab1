all: hello.o libgoodbye.a libhello.so
	gcc -o hello hello.o libgoodbye.a libhello.so

libhello.o: libhello.c hello.h
	gcc -c -fPIC libhello.c

libgoodbye.o: libgoodbye.c hello.h
	gcc -c libgoodbye.c

hello.o: hello.c hello.h
	gcc -c hello.c

libs: libgoodbye.o libhello.o
	ar rv libgoodbye.a libgoodbye.o
	gcc -shared -o libhello.so libhello.o
	rm -f *.o

libgoodbye.a: libgoodbye.o
	ar rv libgoodbye.a libgoodbye.o

libhello.so: libhello.o
	gcc -shared -o libhello.so libhello.o

clean:
	rm -f *.o *.a *.so hello
