# Description of Scripts

## 1. backup . sh
> Backups complete data and saves in a tar file with name specifying the date and time on which backup was done.
```bash
#Use
#Store content of present working directory(in which script is being run ) as compressed tarball(uses gzip)
user@user:~/projects/bash-script$ ./backup.sh 
'tar: Removing leading '/' from member names
Backup of /home/user/projects/bash-script completed ! Details about the output backup file:
-rw-rw-r-- 1 user user 9293 Jan 18 21:24 ../user_bash-script_backup_09-24-24_PM_Jan_18_2021.tar.gz'

#if time is in 09:24:24 format tar will throw error.The reason is that tar interprets colons (:) in file names as meaning it is a file on another machine. Can disable this behavior by using the flag --force-local.
```
## 2. welcome . sh
> Greets user telling him the present day of week and day
```bash
#Use
user@user:~/projects/bash-script$ ./welcome.sh 
'Welcome back Abhay Mishra!. The time is 09:38:11 PM IST and the date is January 18 2021.Today is Monday which is your favourite day.
Wait Does that mean every day is your favourte day?'
```
## 3. CaSE_case .sh
> This script reads file names in current directory within specified depth and changes the names. It first converts space to underscore(_) and then converts them to lowercase **RECURSIVELY**.

```bash
#Use
user@user:~/projects/sample$ tree ./
'./
 ├── HELLO woRld
 │   ├── CODE
 │   │   ├── bash Is BAD
 │   │   ├── Hello.c
 │   │   └── Text.txt
 │   ├── java
 │   └── pErL
 └── NewWorld.pl

5 directories, 3 files'

#default search depth is 1
user@user:~/projects/sample$ ../bash-script/CaSE_case.sh
'Some programs may depend on file names. Continue[y/n]: y'
user@user:~/projects/sample$ tree ./
'./
 ├── hello_world
 │   ├── CODE
 │   │   ├── bash Is BAD
 │   │   ├── Hello.c
 │   │   └── Text.txt
 │   ├── java
 │   └── pErL
 └── newworld.pl

5 directories, 3 files'

#search depth can be specified by giving a non-negative argument
user@user:~/projects/sample$ ../bash-script/CaSE_case.sh 2
'Some programs may depend on file names. Continue[y/n]: y'
user@user:~/projects/sample$ tree
'.
 ├── hello_world
 │   ├── code
 │   │   ├── bash Is BAD
 │   │   ├── Hello.c
 │   │   └── Text.txt
 │   ├── java
 │   └── perl
 └── newworld.pl/

5 directories, 3 files'

#use option -v (and not --verbrose) to list which files were renamed
user@user:~/projects/sample$ ../bash-script/CaSE_case.sh -v 3
Some programs may depend on file names. Continue[y/n]: y
renamed './hello_world/code/bash Is BAD' -> './hello_world/code/bash_Is_BAD'
renamed './hello_world/code/Text.txt' -> './hello_world/code/text.txt'
renamed './hello_world/code/Hello.c' -> './hello_world/code/hello.c'
renamed './hello_world/code/bash_Is_BAD' -> './hello_world/code/bash_is_bad'
user@user:~/projects/sample$ tree
'.
 ├── hello_world
 │   ├── code
 │   │   ├── bash_is_bad
 │   │   ├── hello.c
 │   │   └── text.txt
 │   ├── java
 │   └── perl
 └── newworld.pl

5 directories, 3 files'

``` 
