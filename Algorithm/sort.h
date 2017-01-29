#ifndef SORT_H
#define SORT_H

#include <stdbool.h>
#include "shifts.h"
#include "people.h"

#ifndef MAX_CONSTRAINT
#define MAX_CONSTRAINT 1024
#endif

#ifndef MAX_DOMAIN
#define MAX_DOMAIN 1024
#endif



struct _csp {
	VARIABLE variable;
	int constraint_len;
        CONSTRAINT **constraints;
	int domain_len;
	DOMAIN *domain;

	DOMAIN value;
};

// Returns true if a problem has a solution
bool ac3(struct _csp *csp);

bool complete(struct _csp *assignment, struct _csp *csp, int var_count);

struct _csp *backtrack(struct _csp *assignment, struct _csp *csp,
		       bool(*constraint_check)(DOMAIN *, VARIABLE *),
		       int variable_count, int assignment_index);

void order_domain_values(struct _csp *csp, int var_count,
			 bool(*eval)(void *,void *, struct _csp *));

// get first unassigned variable
struct _csp *select_unassigned_var(struct _csp **csp, struct _csp **assignment);


#endif 
