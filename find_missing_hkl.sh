#! bin/bash
# Run in 2018* folder
#
# Create a list of all channels
find . -name "channel*" | grep -v -e eye -e mountain | sort > chs.txt

# Find created hkl files
find . -name "rplhighpass*hkl" | grep -v -e eye | sort | cut -d "/" -f 1-4 > hps.txt

# Compare the two files
comm -23 chs.txt hps.txt > missing_hkl.txt
