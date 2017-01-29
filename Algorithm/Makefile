CC=gcc
CFLAGS= -std=c99 -g -Wall -pedantic -DDOMAIN="struct person" -DCONSTRAINT="struct Shift" -DVARIABLE="struct Shift"


scheduler: people.o sort.o shifts.o check.o main.c
	$(CC) $(CFLAGS) -o $@ $^

people.o: people.c people.h
shifts.o: shifts.c shifts.h
sort.o: sort.c sort.h
check.o: check.c check.h
test.o: test.c
shiftTest.o: shiftTest.c

test: test.o people.o
shiftTest: shiftTest.o shifts.o
