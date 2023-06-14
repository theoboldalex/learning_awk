#!/usr/bin/env awk -f

# How many members of the portwood family are on the payroll?

BEGIN { count = 0 }
$2 == "Portwood" { count += 1 }
END { print count }
