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



        for(int j = 0; j < num; j++){
            shifts[i].id = i+1;
            strcpy(shifts[i].day, day);
            shifts[i].start = start;
            shifts[i].end = end;
            printf("id: %d\n", shifts[i].id);
            printf("day: %s\n", shifts[i].day);
            printf("start: %f\n", shifts[i].start);
            printf("end: %f\n\n", shifts[i].end);
            i++;
        }
    }
    i++;
    shifts[i].day[0]  = '\0';
    printf("------------------------\n\n");
    traverseShifts(shifts);
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
