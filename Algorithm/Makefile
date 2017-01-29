CC=gcc
CFLAGS= -std=c99 -g -Wall -pedantic


scheduler: people.o sort.o shifts.o main.c
	$(CC) $(CFLAGS) -o $@ $^

people.o: people.c people.h
shifts.o: shifts.c shifts.h
sort.o: sort.c sort.h
test.o: test.c

test: test.o people.o
