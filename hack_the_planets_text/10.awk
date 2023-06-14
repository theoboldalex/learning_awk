#!/usr/bin/env awk -f

# How many engineers of any type are on the payroll?

BEGIN { count = 0 }
$6 ~ /Engineer/ { count += 1 }
END { print count }
