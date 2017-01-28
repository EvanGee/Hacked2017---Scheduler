#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include "people.h"

#define MAX_PEOPLE    1024
#define MAX_LINE      1024
#define DAYS_OF_WEEK  7


void read_and_parse(char *filename, struct person *people)
{

	int insert = 0;
	
	char line[MAX_LINE];
		
	FILE *fp  = fopen(filename, "r");
	if (!fp)
		return;

	while (fgets(line, MAX_LINE, fp)) {

		strtok(line, "\n");
		struct person p = {
			.name =      strtok(line, " "),
			.level =     atoi(strtok(NULL, " ")),
			.max_hours = atof(strtok(NULL, " ")),
			.hours_allocated = 0
		};
		people[insert] = p;
		
		char availability[MAX_LINE];
		for (int i = 0; i < DAYS_OF_WEEK; i++) {
			fgets(availability, MAX_LINE, fp);
			strtok(availability, "\n");
			people[insert].start_times[i] = atof(strtok(availability, " "));
			people[insert].end_times[i] = atof(strtok(NULL, " "));
		}
		people[++insert].name = '\0';
		traverse_people(people);
	}
}

void traverse_people(struct person *people) {

	for (int i = 0; people[i].name != '\0' ; i++) {
		printf ("Name: %s\nlevel: %d\nRequested Hours: %f\n", people[i].name,
			people[i].level, people[i].max_hours);
		for (int j = 0; j < DAYS_OF_WEEK; j++) 
			printf("Start: %f      End: %f\n", people[i].start_times[j],
			       people[i].end_times[j]);
		
	}
}
