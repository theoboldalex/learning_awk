#!/usr/bin/env awk -f

# Add line numbers to the previous anonymised data

{
    if (NR != 1) {
        printf("%d ", NR - 1)
    }
    for (i = 3; i <= NF; i++) {
        printf("%s ", $i)
    }
    print NL
}
