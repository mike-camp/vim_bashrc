
# custom commands for bashrc
up() {
    case $1 in
    *[!0-9]*)
	part_one=$(echo $1/ | sed 's/\([^/]\+\).*/\1/')
	part_two=$(echo $1/ | sed 's/[^/]\+\/\(.*\)/\1/')
	cd $( pwd | sed -r "s|(.*/$part_one[^/]*/).*|\1|" )/$part_two
      ;;
    *)
      cd $(printf "%0.0s../" $(seq 1 $1));
      ;;
  esac
}
	

extract () {
	if [ -f $1 ]  ; then
		case $1 in
			*.tar.bz2) tar xvjf $1   ;;
			*.tar.gz)  tar xvzf $1   ;;
			*.bz2)     bunzip2 $1    ;;
			*.rar)     unrar x $1    ;;
			*.gz)      gunzip $1     ;;
			*.tar)     tar xvf $1    ;;
			*.tbz2)    tar xvjf $1   ;;
			*.tgz)     tar xvzf $1   ;;
			*.zip)     unzip $1      ;;
			*.Z)       uncompress $1 ;;
			*.7z)      7z x $1       ;;
			*)         echo "unrecognized file extension" ;;
		esac
	else
		echo "'$1' is not a valid file"
	fi
}
