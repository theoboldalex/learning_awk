#!/usr/bin/env awk -f

# What is the name of the CEO? Format the output as "LastName, FirstName"

$6 == "CEO" { printf("%s, %s\n", $2, $1) }
