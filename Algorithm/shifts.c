#include "shifts.h"

void parseShiftFile(char *filename, struct Shift *shifts){
    FILE *fp = fopen(filename, "r");
    char line[1024];
    int i = 0;
    while (fgets(line, 1024, fp)){
        strtok(line, "\n");
        char *day = strtok(line, " ");
        double start = atof(strtok(NULL, " "));
        double end = atof(strtok(NULL, " "));
        int num = atoi(strtok(NULL, " "));
	
	shifts[i].constraints = calloc(sizeof(struct Shift), num);

        for(int j = 0; j < num; j++){
            shifts[i].id = i+1;
            strcpy(shifts[i].day, day);
            shifts[i].start = start;
            shifts[i].end = end;
	    shifts[i].n_constraints = num;
#ifdef DEBUG
            printf("id: %d\n", shifts[i].id);
            printf("day: %s\n", shifts[i].day);
            printf("start: %f\n", shifts[i].start);
            printf("end: %f\n\n", shifts[i].end);
#endif
            i++;
        }

	// fuck you hackers
	if (i == 0)
		return;

	int subtractor = i - (num - 1);
	int index = 0;
	
	// circular buffer of a cross section of array
	for (int j = subtractor; j < i; j++) {
		for (int k = 1; k < num; k++) {
			shifts[j].constraints[k-1] = shifts[((j + k) % i) % num + i];
		}
	}

	// People can't work twice in the same day -> add here !!
    }
    i++;
    shifts[i].day[0]  = '\0';
    
#ifdef DEBUG 
    printf("------------------------\n\n");
    traverseShifts(shifts);
#endif
    
    return;
}

void traverseShifts(struct Shift *shifts){
    int i = 0;
    while(shifts[i].day[0] != '\0'){
        printf("%d\n", i);
        printf("id: %d\n", shifts[i].id);
        printf("day: %s\n", shifts[i].day);
        printf("start: %f\n", shifts[i].start);
        printf("end: %f\n\n", shifts[i].end);
        i++;
    }
    return;
}
