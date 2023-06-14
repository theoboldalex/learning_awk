#!/usr/bin/env awk -f

# How many mechanical engineers are on the payroll?

$6 == "MechanicalEngineer" { sum += 1 }
END { print sum }
