#include <stdbool.h>

#include "people.h"
#include "shifts.h"
#include "sort.h"

bool evaluate(struct person *p, struct Shift *s);
void undo(struct person *p);
