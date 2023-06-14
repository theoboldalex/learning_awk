#!/usr/bin/env awk -f

# How many different locations does the company have?

{
    if (!($5 in locations)) {
        locations[$5] = true
    }
}
END { printf("The company has a total of %d different office locations.\n", length(locations) - 1) }
