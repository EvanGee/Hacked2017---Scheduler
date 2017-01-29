
struct _csp {
	void *variable;
	int constraint_len;
	void *constraints[];
	int domain_len;
	void *domain[];

	void *value;
	
	struct _csp *next;
	struct _csp *back;
};

/* Returns true if a problem has a solution */
bool ac3(void *csp);

void *backtrack(struct _csp **assignment, struct _csp **csp,
		bool(*eval)((struct _csp *),(struct _csp **)));

void order_domain_values(struct _csp *csp, int var_count,
			 bool(*eval)((struct _csp *),(struct _csp *)));

// get first unassigned variable
struct _csp *select_unassigned_var(struct _csp **csp, struct _csp **assignment);
