all: hello.o libgreets.a
	gcc -o hello hello.o -Llibs -libgreets
  
hello.o: hello.c
	gcc -c hello.c

mkdir libs
cp libhello.o libs
cp libgoodbye.o libs
cd libs
libgreets.a: libhello.o libgoodbye.o
	ar cr libgreets.a libhello.o libgoodbye.o
cd ..
libhello.o: libhello.c
	gcc -c libhello.c

libgoodbye.o: libgoodbye.c
	gcc -c libgoodbye.c

clean:
	rm -f *.o *.a hello