#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include "people.h"

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

		/*
		  struct person p = {
		  .name =      strtok(line, " "),
		  .level =     atoi(strtok(NULL, " ")),
		  .max_hours = atof(strtok(NULL, " ")),
		  .hours_allocated = 0
		  };
		  people[insert] = p;
		*/
		if (!line[0])
			break;
	       
		printf("%s\n", line);
		char *name = strtok(line, " ");
		people[insert].name = calloc(1, strlen(name) + 1);
		
		strcpy(people[insert].name, name);
		people[insert].level = atoi(strtok(NULL, " "));
		people[insert].max_hours = atof(strtok(NULL, "\n"));
		people[insert].allocated_hours = 0;
		
		char availability[MAX_LINE];
		for (int i = 0; i < DAYS_OF_WEEK; i++) {
			if (fgets(availability, MAX_LINE, fp)) {
				people[insert].start_times[i] = atof(strtok(availability, " "));
				people[insert].end_times[i] = atof(strtok(NULL, "\n"));
			}
			else
				break;
		}
		//people[++insert].name[0] = '\0';
#ifdef DEBUG 
		traverse_people(people);
#endif
	}
}

void traverse_people(struct person *people) {
	
	for (int i = 0; people[i].name[0] != '\0' ; i++) {
		printf ("Name: %s\nlevel: %d\nRequested Hours: %f\n", people[i].name,
			people[i].level, people[i].max_hours);
		for (int j = 0; j < DAYS_OF_WEEK; j++) 
			printf("Start: %f      End: %f\n", people[i].start_times[j],
			       people[i].end_times[j]);
		
	}
}
