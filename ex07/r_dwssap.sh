cat /etc/passwd | grep "^[^#]" |  cut -d':' -f1 | awk "NR % 2 == 0" | rev | sort -dr | awk "NR>=$FT_LINE1 && NR<=$FT_LINE2" | sed s/$/,/ | tr '\n' ' ' | sed 's/, $/./'
