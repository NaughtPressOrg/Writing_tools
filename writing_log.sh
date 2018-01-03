#!/bin/bash
## Author: Stew Stunes
## About: Creates a log entry for Timestamp, Entry #, Current Word Count, and Diff word count between the latest entry and last entry
## Command: ./writing_log STORY_DIR/story.txt
##           |
##           \ -> adds entry to STORY_DIR/misc/writing_log.md
##

_log() {
   wordc=`cat ${1} | wc -w`
   datel=`date +%Y%m%d%H%M`
   project=`echo ${1} | tr "/" " " | awk '{print $1}'`
   logfile="${project}/misc/writing_log.md"
   if [ ! -f ${logfile} ]; then
       mkdir -p ${project}/misc
       touch ${logfile}
fi
   entrynum=`grep Word ${logfile}| wc -l`
   lastcount=`tail -n 4 ${project}/misc/writing_log.md | grep Word| awk '{print $3}'`
   diffcount=$(($lastcount-$wordc))
   posdiff=$( bc <<< "$diffcount * -1" )
   echo $posdiff
   cat << EOF >> ${logfile}
----------
Time: ${datel}
Entry #: ${entrynum}
Word Count: ${wordc}
Diff Count: ${posdiff}
      
EOF
   tail ${logfile}
   echo "${logfile} updated."

}

if test $1; then
    _log "${1}"
else
    echo "Usage: $0 pathtomanuscript"
    exit 1
fi

