function apple {
  echo -n ""
}

function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`')'
}


function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '⠠⠵' && return
    echo 'Ξ'
}

function box_name {
    [ -f ~/.box-name ] && cat ~/.box-name || echo ${SHORT_HOST:-$HOST}
}

#use extended color pallete if available
if [[ $TERM = *256color* || $TERM = *rxvt* ]]; then
    turquoise="%F{81}"
    orange="%F{166}"
    purple="%F{135}"
    hotpink="%F{161}"
    limegreen="%F{118}"
else
    turquoise="$fg[cyan]"
    orange="$fg[yellow]"
    purple="$fg[magenta]"
    hotpink="$fg[red]"
    limegreen="$fg[green]"
fi


local current_dir='${PWD/#$HOME/~}'
local git_info='$(git_prompt_info)'


PROMPT="%{$turquoise%}$(apple)%{$reset_color%} \
%{$hotpink%}%n%{$reset_color%} \
%{$FG[239]%}at%{$reset_color%} \
%{$purple%}$(box_name)%{$reset_color%} \
%{$FG[239]%}in%{$reset_color%} %{$FG[221]%}%~%{$reset_color%} \
%{$fg[magenta]%}$(virtualenv_info)%{$reset_color%} \
%{$fg[magenta]%}${git_info}%{$reset_color%} \
%{$fg[magenta]%}λ%{$reset_color%} 
$(prompt_char) "

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$FG[239]%}on%{$reset_color%} %{$limegreen%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[202]%} ✘"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$FG[040]%} ✔"
