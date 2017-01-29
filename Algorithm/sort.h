
struct _csp {
	void *variable;
	int constraint_len;
	void *constraints[1024];
	int domain_len;
	void *domain[1024];

	void *value;
	
	struct _csp *next;
	struct _csp *back;
};

/* Returns true if a problem has a solution */
bool ac3(struct _csp *csp);

bool complete(struct _csp *assignment, struct _csp *csp, int var_count);

struct _csp *backtrack(struct _csp *assignment, struct _csp *csp,
		       bool(*constraint_check)(void *, void *,struct _csp *),
		       int variable_count, int assignment_index);

void order_domain_values(struct _csp *csp, int var_count,
			 bool(*eval)(void *,void *, struct _csp *));

// get first unassigned variable
struct _csp *select_unassigned_var(struct _csp **csp, struct _csp **assignment);
