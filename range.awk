#!/usr/bin/env awk -f

NR == 3, NR == 5 { print $0 }

# should print lines 3 through 5 in the input file
