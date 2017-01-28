#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "people.h"
#include "shifts.h"
#include "sort.h"


void create_csp(struct person *people, struct shift *shifts, struct _csp *csp)
{
	
	for (int i = 0; shifts[i].day != '\0'; i++) {

		
	}
}

int main(int argc, char **argv)
{

	if (argc < 3)
		exit(1);

	struct person people[MAX_PEOPLE];
	struct shift shifts[MAX_SHIFTS];
	struct _csp csp[MAX_SHIFTS];
	struct _csp assignments[MAX_SHIFTS];
	
	read_and_parse(argv[1], people);
	
	
}
