#!/usr/bin/env awk -f

# Who worked the most hours this week?

BEGIN {
    max_hours = 0
    name = ""
}

NR != 1 && $4 > max_hours {
    max_hours = $4
    name = $1 FS $2
}

END {
    printf("%s worked the most hours this week with a total of %d\n", name, max_hours)
}

