#!/bin/bash
#a
awk '{count++} END {print count}' aliceinwonderland.txt

#b
awk '{for(i=2;i<=NF-1;i++) if ($i == "Alice") counter++} END {print counter}' aliceinwonderland.txt

#c
awk '{for(i=2;i<=NF-1;i++) dic[$i]++} END {for(str in dic) if (dic[str] == 1) print str}' aliceinwonderland.txt
#d
grep -o '[A-Za-z0-9]\+' aliceinwonderland.txt | awk '{dic[$1]++} END {for(word in dic) print word,dic[word]}'|sort -k 2 -n | tail -5 | cut -f 1 -d " "

#e
awk '{for(i=1;i<=NF;i++) {sum += length($i); count++}} END {print sum/count}' aliceinwonderland.txt

