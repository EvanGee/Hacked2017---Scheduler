#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "check.h"

bool evaluate(struct person *p, struct Shift *s)
{

	for (int i = 0; i < s->n_constraints; i++) {
		if (s->constraints[i]->value == p)
			return false;
	}
	if (p->allocated_hours == p->max_hours)
		return false;

	if (p->allocated_hours + (s->end - s->start) > p->max_hours ||
	    p->allocated_hours + (s->end - s->start) > 40.0)
		return false;
	
	return true;
		

}    

void undo(struct person *p) {

}
