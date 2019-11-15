
goto() {
	exec 5>&1
	next_dir_output=$(find ~ -maxdepth 4 -name '.git' | sed -n -e "s|^\(.*/$1\)/\.git|\1|p" | xargs ~/.misc/find_first.py | tee >(cat - 1>&5 2>&5)) 
	cd $(echo $next_dir_output | awk '{print $NF}')
}
