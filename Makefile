#Makefile for project
all: main.o greetings.a
  gcc -o hello_bin main.o -L. -lworld
  
main.o: main.c
  gcc -c main.c

greetings.a: libhello.o libgoodbye.o
  ar cr greetings.a libhello.o libgoodbye.o

