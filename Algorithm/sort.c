#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdbool.h>

#include "sort.h"
#include "parser.h"
#include "check.h"

#define CAST_TO(type_t, member) ({			\
	unsigned char bar;				\
	bar = ((type_t*) member;			\
});

bool ac3(struct _csp *csp)
{
	
}

struct _csp *backtrack(struct _csp *assignments, struct _csp *csp,
			bool(*constraint_check)((struct _csp),(struct _csp *)),
			int variable_count, int assignment_index)
{
	if (variable_count != 0) {
		assignments = calloc(sizeof(struct _csp *), variable_count);
	}
       	
	if (complete(assignments, csp)) { // this function
		return assignments;
	}
	
	// struct _csp *variable = csp->variable;
	for (int i = 0; i < csp->domain_len; i++) {
		if (constraint_check(csp->domain[i], assignments)) {
			
			flagged = false;
			csp->value = csp->domain[i];
			
			assignments[curr_index] = {
				.variable = csp->variable,
				.value = csp->domain[i]
			};
			
			// check arc consistency here
			
			struct _csp *result;
			result = backtrack(assignments, csp->next, eval, 0, ++current_index);

			if (result)
				return result;
			
		}
		
		// remove value from domain
		remove(csp, csp->domain[i]); // this function
	}
	return NULL;
}

bool complete(struct _csp **assignment, struct _csp **csp, int var_count) 
{
	for (int i = 0; i < var_count; i++) {
		if (!assignment[i]) 
			return false;
	}
	return true;
}



/* void order_domain_values(struct _csp *csp, int var_count, */
/* 			 bool(*eval)((struct _csp **),(struct _csp **))) */
/* { */

/* 	// use q_sort */
/* }; */

/* struct _csp *select_unassigned_var(struct _csp **csp, struct _csp **assignment) */
/* { */

/* } */
