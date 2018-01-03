#!/bin/bash
## Author: Stew Stunes
## About: Creates Skeleton structure of files and dirs that I liek to have when starting a new story. 
## Command: ./storygen.sh nameofstory
##           | 
##           \ creates: nameofstory/{manuscript,notes,assets,misc}/
##                                                                \ and various files on this level
##
## 
_build_struct() {
    story=$1
    s_oneword=`echo ${story//[[:blank:]]/}`
    echo ${s_oneword}
    mkdir -p ${s_oneword}/{manuscript,notes,assets,misc}
    touch ${s_oneword}/manuscript/${s_oneword}_1stdraft.md
    echo "# ${s_oneword}" >> ${s_oneword}/manuscript/${s_oneword}_1stdraft.md
    echo "Init Date: `date +%Y%m%d_%H%M`" >> ${s_oneword}/manuscript/${s_oneword}_1stdraft.md
    touch ${s_oneword}/notes/outline.md
    touch ${s_oneword}/notes/chars.md 
    touch ${s_oneword}/notes/world_dict.md
    touch ${s_oneword}/notes/mind_dump.md
    touch ${s_oneword}/notes/settings.md
    touch ${s_oneword}/misc/frontmatter.md
    touch ${s_oneword}/misc/backmatter.md
    touch ${s_oneword}/misc/synopsis.md
    touch ${s_oneword}/misc/query_01.md
    touch ${s_oneword}/assets/images_media_go_here.md
    touch ${s_oneword}/misc/writing_log.md
    echo "# ${s_oneword}" >> ${s_oneword}/misc/writing_log.md
    echo "Init Date: `date +%Y%m%d_%H%M`" >> ${s_oneword}/misc/writing_log.md


    echo "Story Skeleton for ${s_oneword} created"
        
}



if test $1; then
    _build_struct "${1}"
else
    echo "Usage: $0 nameofstory"
    exit 1 
fi
