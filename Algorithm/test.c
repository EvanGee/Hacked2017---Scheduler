#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "people.h"

int main(void)
{
	struct person people[1024];
	read_and_parse("people.test", people);
	//	traverse_people(people);
}
