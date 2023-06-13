#!/usr/bin/env awk -f

$1 ~ /hello/ && $2 !~ /world/ { # THIS NEEDS TO BE ON THE SAME LINE AS THE PATTERN
    printf "%s%s, %s%s!\n", toupper(substr($1, 1, 1)), substr($1, 2), toupper(substr($2, 1, 1)), substr($2, 2)
}
