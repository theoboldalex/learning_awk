#!/usr/bin/env awk -f

# Who is the highest paid employee?

BEGIN { 
    max = 0
    name = ""
}

NR != 1 && $3 > max { 
    max = $3
    name = $1 FS $2
}

END { printf("Highest paid employee: %s\nSalary: $%.2f\n", name, max) }
