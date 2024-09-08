#! bin/bash
#
#
# Search for all .mda files
find . -name "firings.mda" | grep -e mountains | sort | cut -d "/" -f 3 > firings_chs.txt

# Compare to find all missing channels 
comm -23 <(cut -d "/" -f 4 chs.txt) firings_chs.txt > missing_firings.txt

# Get fill paths
grep -f missing_firings.txt chs.txt
