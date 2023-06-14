#!/usr/bin/env awk -f

# Print each column header along with the column number

NR == 1 {
    for (i = 1; i <= NF; i++) {
        printf("%d: %s\n", i, $i)
    }
}
