#ifndef SHIFTS_H
#define SHIFTS_H

#include <string.h>
#include <stdlib.h>
#include <stdio.h>

#define MAX_SHIFTS 1024

struct Shift{
	int id;
	char day[3];
	float start;
	float end;
	int n_constraints;
	struct Shift **constraints;
	struct person *value;
};

void parseShiftFile(char *filename, struct Shift *shifts);
void traverseShifts(struct Shift *shifts);

#endif
