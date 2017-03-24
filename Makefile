all: hello.o libgreets.a
	gcc hello.o libgreets.a libhello.so -o hello
  
hello.o: hello.c hello.h
	gcc -c hello.c

libgoodbye.a: libgoodbye.o
	ar cr libgreets.a libhello.o libgoodbye.o

libhello.so: libhello.o
	gcc -shared -o libhello.so libhello.o

libs:
	

libhello.o: libhello.c hello.h
	gcc -c libhello.c

libgoodbye.o: libgoodbye.c hello.h
	gcc -c libgoodbye.c

clean:
	rm -f *.o *.a hello