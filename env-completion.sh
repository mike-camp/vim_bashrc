#!/usr/bin/env bash
_source_activate_completion()
{
	if [ ${COMP_WORDS[COMP_CWORD-1]} != "activate" ]
	then
		return 0
	fi
	local current_string=${COMP_WORDS[COMP_CWORD]}
	local env_list=$(conda info --envs | grep -o "^\w\S*")
	COMPREPLY=($(compgen -W "${env_list[@]}" -- "$current_string"))
	return 0
}

complete -F _source_activate_completion source
