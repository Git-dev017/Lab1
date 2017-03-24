binary: hello.o libgreets.a
	gcc hello.o -llibgreets.a -o hello
  
hello.o: hello.c hello.h
	gcc -c hello.c

libgreets.a: libhello.o libgoodbye.o
	ar cr libgreets.a libhello.o libgoodbye.o

libhello.o: libhello.c hello.h
	gcc -c libhello.c

libgoodbye.o: libgoodbye.c hello.h
	gcc -c libgoodbye.c

clean:
	rm -f *.o *.a hello