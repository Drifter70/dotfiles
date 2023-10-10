# ~/.bashrc

# Alias

# Misc
alias visudo="sudo EDITOR=nvim visudo"
alias neo="clear && neofetch"
alias su="clear && sudo su"
# alias feh="feh -."
alias rm="rm -r"
alias vim="nvim"
# alias rss="newsboat"

# wttr.in stuff
alias wttr="clear &&curl wttr.in?0"
alias wtr="clear &&curl wttr.in/moskow"
alias weather="clear &&curl wttr.in"
alias wtttr="clear &&curl wttr.in/tokyo"

# Source alias
alias bq=". ~/.bashrc"
alias t="tmux new-session -A -s Main ;bq"

# File stuff
alias ls="clear && ls --color=auto -A"
alias la="ls -a"
alias ls='eza --icons'
# Vim alias
alias b="nvim ~/.bashrc &&. ~/.bashrc"
alias x="nvim ~/.Xresources && xrdb ~/.Xresources"
alias v="nvim ~/.vimrc"
alias tm="nvim ~/.config/.tmux/.tmux.conf ;bq"
alias bc="nvim ~/.config/.stuff &&bq"

# Sourcing files
# source ~/.config/lf-icon
tmux source ~/.config/tmux/tmux.conf
xrdb ~/.Xresources

# Making tmux run at bashrc startup
# if command -v tmux &> /dev/null && [ -n "$PS1" ] \
# && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] \
# && [ -z "$TMUX" ]; then
# exec $(tmux a -t base || tmux new -s base)
# fi
EDITOR=nvim
# If not running interactively, don't do anything
[[ $- != *i* ]] && return
export PS1=" \W \[$(tput sgr0)\]"
clear
