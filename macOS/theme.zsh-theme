# Colors!
set     red="%{\033[1;31m%}"
set   green="%{\033[0;32m%}"
set  yellow="%{\033[1;33m%}"
set    blue="%{\033[1;34m%}"
set magenta="%{\033[1;35m%}"
set    cyan="%{\033[1;36m%}"
set   white="%{\033[0;37m%}"
set     end="%{\033[0m%}" # This is needed at the end.

PROMPT='%B%F{blue}%n@%m%F{white}:%F{magenta}%d%b'
#PROMPT='%B[%F{blue}%n%F{white}][%F{magenta}%d%F{white}]%B' 
#PROMPT='%d'
#PROMPT+='%B$(git_prompt_info)$(hg_prompt_info)%{$reset_color%} %{%F{046}%}%# %B%f'
PROMPT+='$(git_prompt_info)$(hg_prompt_info)%{$reset_color%} %# %f'
export PS1

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$reset_color%}(%{$fg_bold[blue]%}git %{$fg_bold[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%})"
ZSH_THEME_HG_PROMPT_PREFIX=" %{$fg[blue]%}hg %{$fg[magenta]%} %{$reset_color%} there"
ZSH_THEME_HG_PROMPT_SUFFIX=" %{$fg[yellow]%} → %{$reset_color%} you"


export LC_ALL=en_US.UTF-8
export CLICOLOR=1
export LS_COLORS="di=1;34:fi=1:ln=1;35:so=32:pi=33:ex=1;31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"
[[ -z "$LS_COLORS" ]] || zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
