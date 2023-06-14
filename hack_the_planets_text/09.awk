#!/usr/bin/env awk -f

# How much money per hour does the Seattle office cost?

BEGIN { total_cost = 0 }
$5 == "Seattle" { total_cost += $3 }
END { printf("Total cost for Seattle Office: $%.2f\n", total_cost) }
