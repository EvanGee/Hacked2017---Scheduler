#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "shifts.h"

int main(void)
{
    struct Shift shifts[1024];
    parseShiftFile("./shiftText.txt", shifts);

}
