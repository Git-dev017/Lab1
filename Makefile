binary: hello.o libgreets.a
	gcc -o hello hello.o -llibgreets
  
hello.o: hello.c
	gcc -c hello.c

libgreets.a: libhello.o libgoodbye.o
	ar cr libgreets.a libhello.o libgoodbye.o

libhello.o: libhello.c
	gcc -c libhello.c

libgoodbye.o: libgoodbye.c
	gcc -c libgoodbye.c

clean:
	rm -f *.o *.a hello