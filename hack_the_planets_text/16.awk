#!/usr/bin/env awk -f

# What is the average wage?

BEGIN { running_total = 0 }

NR != 1 {
    running_total += $3
}

END { printf("The avergae wage is $%.2f\n", running_total / (NR - 1)) }
