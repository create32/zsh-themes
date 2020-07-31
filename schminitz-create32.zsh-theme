ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}✘"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}✔"
ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg[red]%}➦"

# ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[cyan]%} ✈"
# ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%} ✭"
# ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✗"
# ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[blue]%} ➦"
# ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[magenta]%} ✂"
# ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[grey]%} ✱"

function prompt_char {
	if [ $UID -eq 0 ]; then echo "%{$fg_bold[red]%}#%{$reset_color%}"; else echo "%{$fg_bold[white]%}$%{$reset_color%}"; fi
}
PROMPT_CHAR=$(prompt_char)

# get the name of the branch we are on
function vim_bg_info() {
  if [[ "$(command echo $VIM)" != "" ]]; then
    echo " ⚡"
  fi
}

if [ "${USE_GIT}" = "false" ]
then
PROMPT='%(?, ,%{$fg[red]%}FAIL%{$reset_color%}
)
%{$fg[green]%}[%*]%{$reset_color%} %{$fg[yellow]%}%~%{$reset_color%}
%{$fg_bold[magenta]%}%n%{$reset_color%}%{$fg[magenta]%}@%m%{$reset_color%}${PROMPT_CHAR} '
else 
PROMPT='%(?, ,%{$fg[red]%}FAIL%{$reset_color%}
)
%{$fg[green]%}[%*]%{$reset_color%} %{$fg[yellow]%}%~%{$reset_color%}$(git_prompt_info)%{$reset_color%}$(git_prompt_ahead)%{$reset_color%}
%{$fg_bold[magenta]%}%n%{$reset_color%}%{$fg[magenta]%}@%m%{$reset_color%}${PROMPT_CHAR} '
fi

# Time on right
#RPROMPT='%{$fg[green]%}[%*]%{$reset_color%}'
