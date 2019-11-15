if grep -q 'goto' ~/.bashrc
then
    echo 'goto already installed, skipping'
else
	echo 'installing goto'
	cat goto.sh >> ~/.bashrc
fi


if grep -q 'up' ~/.bashrc
then
    echo 'up already installed, skipping'
else
	echo 'installing up'
	cat up.sh >> ~/.bashrc
fi

if [ -f ~/.misc/find_first.py ]
then
	echo 'find_first installed, skipping'
elif [ ! -d ~/.misc ]
then
	echo 'making director and installing find_first'
	mkdir ~/.misc
	cp find_first.py ~/.misc/find_first.py
	chmod u+x ~/.misc/find_first.py
else
	echo 'installing find_first'
	cp find_first.py ~/.misc/find_first.py
	chmod u+x ~/.misc/find_first.py
fi

if [ ! -f ~/.bash_completion ]
then
	cp bash_completion ~/.bash_completion
fi

if grep -q '^source ~/.bash_completion' ~/.bashrc
then
	echo 'bash completion already sourced'
else
	echo 'source ~/.bash_completion' >> ~/.bashrc
fi

if [ ! -d ~/.bash_completion.d ]
then
	mkdir ~/.bash_completion.d
fi

if [ ! -d ~/.bash_completion.d/goto_completion.sh ]
then
	cp goto_completion.sh ~/.bash_completion.d/goto_completion.sh
else
	echo 'goto completion already installed'
fi

if [ ! -d !/.bash_completion.d/env_completion.sh ]
then 
	cp env_completion.sh ~/.bash_completion.d/env_completion.sh
else
	echo 'env completion already installed'
fi
