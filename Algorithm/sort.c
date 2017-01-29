#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdbool.h>

#include "sort.h"
#include "people.h"
//#include "shifts.h"
//#include "check.h"

#define CAST_TO(type_t, member) ({			\
	unsigned char bar;				\
	bar = ((type_t*) member;			\
});

bool ac3(struct _csp *csp)
{
	
}

struct _csp *backtrack(struct _csp *assignments, struct _csp *csp,
		       bool(*constraint_check)(void *,void *,struct _csp *),
			int variable_count, int curr_index)
{
	if (variable_count != 0) {
		assignments = calloc(sizeof(struct _csp *), variable_count);
	}
       	
	if (complete(assignments, csp, 10 /* change later please*/)) { // can do better !!
		return assignments;
	}
	
	// struct _csp *variable = csp->variable;
	for (int i = 0; i < csp->domain_len; i++) {
		if (constraint_check(csp->domain[i], csp->variable, assignments)) {
			
			csp->value = csp->domain[i];

			struct _csp value = {
				.variable = csp->variable,
				.value = csp->domain[i]
			};
			
			assignments[curr_index] = value;
			
			// check arc consistency here
			
			struct _csp *result;
			result = backtrack(assignments, csp->next, constraint_check,
					   0, ++curr_index);

			if (result)
				return result;
			
		}
		
		// remove value from domain
		//remove(csp, csp->domain[i]); // don't need because we are not removing anything
	}
	return NULL;
}

/* void remove(struct _csp *csp, void *domain) { */

/* 	int i; */
/* 	for (i = 0; csp->domain[i] != domain; i++); */
/* 	csp->domain[i] = NULL; */
	
/* } */

bool complete(struct _csp *assignment, struct _csp *csp, int var_count) 
{
	/* for (int i = 0; i < var_count; i++) { */
	/* 	if (assignment[i] == NULL)  */
	/* 		return false; */
	/* } */
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
