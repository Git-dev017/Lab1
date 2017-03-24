all: hello.o libggoodbye.a
	gcc hello.o libgoodbye.a libhello.so -o hello
  
hello.o: hello.c hello.h
	gcc -c hello.c

libgoodbye.a: libgoodbye.o
	ar cr libgreets.a libhello.o libgoodbye.o

libhello.so: libhello.o
	gcc -shared -o libhello.so libhello.o

libhello.o: libhello.c hello.h
	gcc -c libhello.c

libgoodbye.o: libgoodbye.c hello.h
	gcc -c libgoodbye.c

clean:
	rm -f *.o *.a hello