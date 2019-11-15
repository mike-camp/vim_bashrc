
up() {
    case $1 in
    *[!0-9]*)
	part_one=$(echo $1/ | sed 's/\([^/]\+\).*/\1/')
	part_two=$(echo $1/ | sed 's/[^/]\+\/\(.*\)/\1/')
	cd $( pwd | sed -r "s|(.*/$part_one[^/]*/).*|\1|" )$part_two
      ;;
    *)
      cd $(printf "%0.0s../" $(seq 1 $1));
      ;;
  esac
}
