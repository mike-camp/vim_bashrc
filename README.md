# Vim and bashrc profile settings

This repository contains the vim and bashrc files which can be used to set up vim and bashrc.   The plugins for vim are managed by Vundle, and include:
  - indentpython
  - SimpylFold
  - Nerdtree
  - syntastic
  - YouCompleteMe

To run the .vimrc file you will need a version of vim which support python2.  The script install\_vim.sh will install the correct version of vim, and will then install the plugins.   If you do not want to write the script, then to see if your version of vim includes python 2, enter vim --version.  You should see a +python if the version of vim includes python2.  Note, if the version says -python +python3, it will not work.  Choose another distribution of vim, or build it yourself from source.    

YouCompleteMe is finicky and would not work if the python install.py was run as a script, ie running ./install.py  Either install anaconda and then run python install.py (easiest), or run the shell script in an anaconda virtual environment.   The script install.sh has a limited success rate, however the command ```python install.py``` tends to work well.   

The bashrc includes functions such as up, which allows you to move up either a certain number of directories, or alternatively if a name is provided, allows you to move up to the name of the directory above the current directory.   ex
```
michael:~/Documents/galvanize/Kaggle/Cancer_Project/src$ up Documents
michael:~/Documents$
```

or 

```
michael:~/Documents/galvanize/Kaggle/Cancer_Project/src$ up 3
michael:~/Documents/galvanize$
```

or

```
michael:~/Documents/galvanize/Kaggle/Cancer_Project/src$ up galvanize/dsi-lectures/linear_regression
michael:~/Documents/galvanize/dsi-lectures/linear_regression$
```

Th bashrc also contains an extract function that will call the correct software to extract files of type:
 - .zip 
 - .rar 
 - .tar
 - .bz
 - .bz2
 - .gz
 - .tbz2
 - .tgz
 - .Z 
