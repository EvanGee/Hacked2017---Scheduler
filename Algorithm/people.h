#ifndef PEOPLE_H
#define PEOPLE_H

#define MAX_PEOPLE    1024

struct person {

	char *name;
	int level;
	float start_times[7];
	float end_times[7];
	double max_hours;
	int allocated_hours;
};



void traverse_people(struct person *people);

void read_and_parse(char *filename, struct person *people);

#endif
