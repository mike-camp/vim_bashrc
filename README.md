# Useful Bash functions
A library of useful bash functions.  These functions can be installed by running 

``` 
chmod u+x install-bash-functions.sh
./install-bash-functions.sh
```

To install vim with YouCompleteme, a syntax checker, and several other nice features, run

```
chmod u_x install-vim.sh
./install-vim.sh
```
The bash function install will work on both mac and unix, however, the vim install currently only works on linux. 

## New useful commands

### up

Instead of writing `cd ../../../../..` You can now write up 5, and you will navigate to a directory 5 higher.  You can also navigate up to a specific derecotry by typing in all or just the first part of the name for example
```

user:Documents/respositories/resume-data/src/java/com/indeed/resume/quality/tools$ up 3
user:Documents/respositories/resume-data/src/java/com/indeed$ 
user:Documents/respositories/resume-data/src/java/com/indeed$ up src
user:Documents/repositories/resume-data/src$ 
user:Documents/repositories/resume-data/src$ up repo
user:Documents/repositories$:
```


### goto

Do you ever hate finding where you actually installed a git repository.  Now you can just type in `goto <repository name> ` and you will navigate to the repository.  If you have accidently cloned the repo to two different locations, it will ask you which one you want to go to.  And it also supports tab completion.   

```
username:Documents/resume-quality$ goto resume-data-pipeline
/user/username/repositories/resume-data-pipeline
username:repositories/resume-data-pipeline$
```
