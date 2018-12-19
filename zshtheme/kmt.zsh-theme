# KuoMinTang theme
autoload colors zsh/terminfo
if [[ "$terminfo[colors]" -ge 8 ]]; then
    colors
fi
for color in RED GREEN YELLOW BLUE MAGENTA CYAN WHITE; do
    eval PR_$color='%{$terminfo[bold]$fg[${(L)color}]%}'
    eval PR_LIGHT_$color='%{$fg[${(L)color}]%}'
    ((count=$count+1))
done
PR_NOCOLOUR="%{$terminfo[sgr0]%}"
PROMPT='${PR_BLUE}[${PR_NOCOLOUR}${PR_WHITE}%U%n@%m on %y${PR_NOCOLOUR}${PR_BLUE}]${PR_NOCOLOUR}\
${PR_BLUE}(${PR_NOCOLOUR}${PR_RED}%~${PR_NOCOLOUR}${PR_BLUE})${PR_NOCOLOUR}
${PR_BLUE}[${PR_NOCOLOUR}${PR_WHITE}%T%#${PR_NOCOLOUR}${PR_BLUE}]${PR_NOCOLOUR}${PR_RED}$ ${PR_NOCOLOUR}'
RPROMPT='${PR_BLUE}(${PR_NOCOLOUR}${PR_RED}%D{%a,%b%d}${PR_NOCOLOUR}${PR_BLUE})${PR_NOCOLOUR}'
#PROMPT="%{$fg[blue]%}[%{$reset_color%}%{$fg_bold[white]%}%U%n@%m%U%{$reset_color%}%{$fg[blue]%}]%{$reset_color%}%{$fg[red]%}[%D-%T] @ %~%{$reset_color%}
#%{$fg_bold[white]%}$%{$reset_color%} "
