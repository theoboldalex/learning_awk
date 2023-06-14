#!/usr/bin/env awk -f

# Are there any employees with identical first and last names?

BEGIN { count = 0 }
$1 == $2 { count += 1 }
END { printf("There are %d employees with identical first and last names\n", count)}
