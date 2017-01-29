
struct person {

	char *name;
	int level;
	double start_times[7];
	double end_times[7];
	double max_hours;
	int hours_allocated;
};

void traverse_people(struct person *people);

void read_and_parse(char *filename, struct person *people);
