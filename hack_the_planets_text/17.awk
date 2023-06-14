#!/usr/bin/env awk -f

# Are there any duplicate entries? (Same name appears more than once)
function getname(f, l) {
    return f l
}

BEGIN { 
    count = 0
    marker = 9999
}

$1 !~ /FirstName/ {
    if (names[getname($1, $2)] == marker) {
        count += 1
    }
    names[getname($1, $2)] = marker
}

END { 
    print count
}
