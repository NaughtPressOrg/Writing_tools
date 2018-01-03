# Writing Scripts/tools
For more information on how Linux can be used for writing see my creative blog https://stewstunes.com/linux-for-authors/


## storygen.sh
About: Creates Skeleton structure of files and dirs that I liek to have when starting a new story. 
```
Command: ./storygen.sh nameofstory
           | 
           \ creates: nameofstory/{manuscript,notes,assets,misc}/
                                                                \ and various files on this level
```
## writing_log.sh
About: Creates a log entry for Timestamp, Entry number, Current Word Count, and Diff word count between the latest entry and last entry
```
Command: ./writing_log STORY_DIR/story.txt
          |
          \ -> adds entry to STORY_DIR/misc/writing_log.md

  $ tail STORY_DIR/misc/writing_log.md 
  Entry #: 5
  Word Count: 8864
  Diff Count: 584
        
  ----------
  Time: 201801022215
  Entry #: 6
  Word Count: 9134
  Diff Count: 270
```


## timer.sh
About: Countdown timer in minutes, for writing sprints
```
Command: ./timer.sh 25 - countsdown from 25 minutes, displays remaining seconds
         |
         \
           TIME REMAINING: 0 
           !!!!FINISHED!!!!
           !!!!FINISHED!!!!
           !!!!FINISHED!!!!
           !!!!FINISHED!!!!
           !!!!FINISHED!!!!
           !!!!FINISHED!!!!
           !!!!FINISHED!!!!
           !!!!FINISHED!!!!
           !!!!FINISHED!!!!
           !!!!FINISHED!!!!
```

## thes.sh
About: retrieves thesaurs results from thesaurs.com

