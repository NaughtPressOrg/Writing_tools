#!/bin/sh 
# 
# Command line thesaurus 
# Source: http://www.linuxhowtos.org/Tips%20and%20Tricks/cmdline_thesaurus.htm
#  
BROWSER="/usr/bin/lynx -source" 
WEBSITE="http://www.thesaurus.com/browse/$1" 
HTML2TEXT="/usr/bin/html2text -style compact" 
PAGER="/bin/more" 
if test $1; then 
    ${BROWSER} ${WEBSITE} | ${HTML2TEXT} | ${PAGER} 
else 
    echo "Usage: $0 word" 
    exit 1 
fi 
