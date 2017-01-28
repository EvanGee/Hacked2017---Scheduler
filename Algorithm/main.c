#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "people.h"
#include "shifts.h"

#define DOMAIN struct person
#define CONSTRAINT struct Shift
#define MAX_DOMAIN MAX_SHIFTS
#define MAX_CONSTRAINT MAX_SHIFTS
#include "sort.h"
#undef MAX_CONSTRAINT
#undef MAX_DOMAIN
#undef DOMAIN
#undef CONSTRAINT

#define MAX_SHIFTS 1024

int create_csp(struct person *people, struct Shift *shifts, struct _csp *csp)
{

	int i;
	for (i = 0; shifts[i].day != '\0'; i++) {
		csp[i].variable = shifts[i];

		int j =0;
		for (j = 0; people[j].name[0] != '\0'; j++)  {
			csp[i].domain[j] = people[j];
			csp[i].domain[j+1].name[0] = '\0';
		}
		csp[i].domain_len = j;
		
		for (int j = 0; shifts[j].n_constraints; j++) {
			csp[i].constraints[j] = shifts[i].constraints[j];
			csp[i].constraints[j+1].day[0] = '\0';
		}
		
	}
	return i;
}


int main(int argc, char **argv)
{

	if (argc < 3)
		exit(1);

	struct person people[MAX_PEOPLE];
	struct Shift shifts[MAX_SHIFTS];
	struct _csp csp[MAX_SHIFTS];
	struct _csp assignments[MAX_SHIFTS];
	
	read_and_parse(argv[1], people);
	parseShiftFile(argv[2], shifts);

	int size = create_csp(people, shifts, csp);

	backtrack(assignments, csp, evaluate, size, 0);
}
