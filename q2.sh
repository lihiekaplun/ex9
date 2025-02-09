#!/bin/bash
#a
sed -n '/Sherlock\|Holmes/p' sherlockholmes.txt | wc -l

#b
sed -n 's/Sherlock/&/gp; s/Holmes/&/gp' sherlockholmes.txt | wc -l

#c
sed -E 's/(^)/Hello: /g' sherlockholmes.txt

#d
sed -nr 's/([A-Z][a-z]{1,})( [A-Z][a-z]{1,})*/Lihie Kaplun/gp' sherlockholmes.txt

#e
sed 's/(\([^)]*\))/[\1]/g' sherlockholmes.txt 

