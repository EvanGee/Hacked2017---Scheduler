#define MAX_PEOPLE    1024

struct person {

	char name[1024];
	int level;
	double start_times[7];
	double end_times[7];
	double max_hours;
	int hours_allocated;
};



void traverse_people(struct person *people);

void read_and_parse(char *filename, struct person *people);
