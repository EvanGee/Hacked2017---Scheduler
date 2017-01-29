#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdbool.h>

#include "sort.h"


struct _csp *backtrack(struct _csp *assignments, struct _csp *csp,
		       bool(*constraint_check)(DOMAIN *, CONSTRAINT *),
			int variable_count, int curr_index)
{
	
	if (complete(assignments, csp, 10 /* change later please*/)) // can do better !!
		return assignments;
	
	for (int i = 0; i < csp[curr_index].domain_len; i++) {
		if (constraint_check(&csp[curr_index].domain[i],
				     &csp[curr_index].variable)) {
			
			csp[curr_index].value = csp[curr_index].domain[i];
			
			struct _csp value = {
				.variable = csp[curr_index].variable,
				.value = csp[curr_index].domain[i]
			};

			
			assignments[curr_index] = value;
			csp[curr_index].domain[i].allocated_hours +=
				(csp[curr_index].variable.end - csp[curr_index].variable.start);
			
			// check arc consistency here
			
			struct _csp *result;
			result = backtrack(assignments, csp, constraint_check,
					   0, curr_index);

			csp[curr_index].domain[i].allocated_hours -=
				(csp[curr_index].variable.end - csp[curr_index].variable.start);
			
			if (result)
				return result;
			
		}
	}
	return NULL;
}

bool complete(struct _csp *assignment, struct _csp *csp, int var_count) 
{
	/* for (int i = 0; i < var_count; i++) { */
	/* 	if (assignment[i] == NULL)  */
	/* 		return false; */
	/* } */
	return true;
}
