#!/usr/bin/env awk -f

# Anonymize the payroll data by removing the first two columns
{
    for (i = 3; i <= NF; i++) {
        printf("%s ", $i)
    }
    print NL
}
