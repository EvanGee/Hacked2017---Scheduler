

#include <string.h>
#include <stdlib.h>
#include <stdio.h>

struct Shift{
    int id;
    char day[3];
    float start;
    float end;
};

void parseShiftFile(char *filename, struct Shift *shifts);
void traverseShifts(struct Shift *shifts);


