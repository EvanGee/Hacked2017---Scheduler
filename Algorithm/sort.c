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

struct _csp **backtrack(struct _csp **assignment, struct _csp **csp,
			bool(*constraint_check)((struct _csp *),(struct _csp **)))
{
	
	bool flag = false;
	
	if (complete(assignment, csp)) { // made this function above
		return assignment;
	}
	
	struct _csp *variable = (*csp)->variable;
	for (int i = 0; i < (*csp)->domain_len; i++) {
		if (constraint_check(variable, assignment)) { 
			
			flagged = false;
			// malloc assignment
			// add variable to assignment
			// check arc consistency here 
			
		}
		else {
			flagged = true;
		}
	}
	
	(*csp) = (*csp)->next;
	struct _csp *result;
	
	if (!flagged) {
		result = backtrack(assignment, csp, eval);
	}

}


void order_domain_values(struct _csp *csp, int var_count,
			 bool(*eval)((struct _csp **),(struct _csp **)))
{

	// use q_sort
};

struct _csp *select_unassigned_var(struct _csp **csp, struct _csp **assignment)
{

}

bool complete(struct _csp **assignment, struct _csp **csp, int var_count) 
{
	for (int i = 0; i < var_count; i++) {
		if (!assignment[i]) 
			return false;
	}
	return true;
}
