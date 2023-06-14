#!/usr/bin/env awk -f

# Which employees were hired on April 16th, 1993? (print the list)

$NF ~ /^1993.04.16$/ { print }
