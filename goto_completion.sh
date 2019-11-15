_goto_completions()
{
	COMPREPLY=($(compgen -W "$(find ~ -maxdepth 4 -name '.git' | sed -n -e 's|.*/\([^/]\+\)/\.git|\1|p')" -- "${COMP_WORDS[1]}"))
}

complete -F _goto_completions goto
