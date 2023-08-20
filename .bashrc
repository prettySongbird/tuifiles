#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

umask 0077

##### exports #####

# disable accessibility services
export NO_AT_BRIDGE=1
export GTK_A11Y=none

# make sure firefox uses wayland backend
export MOZ_ENABLE_WAYLAND=1
export GDK_BACKEND=wayland

# set ssh-agent socket variable
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

#export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/gnupg/S.gpg-agent.ssh"
#export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)

# load only default ranger config
export RANGER_LOAD_DEFAULT_RC=false

export EDITOR='vim'
export OPENER='rifle'
export FZF_DEFAULT_COMMAND="fd -H"
export GTK_THEME='Adwaita:dark'
export GOPATH=$HOME/.go

# limitless history
HISTSIZE=
HISTFILESIZE=

##### alias #####

alias a='lf'
alias a7z='7z a -mhe=on -p '
alias q='exit'
alias f='broot -hs'
alias s='exec sway'
alias v='vim'
alias t='tmux'
alias qqq='killall -u "$USER" lf 2>/dev/null; killall -u "$USER" sway'
alias grep='grep --color=auto'
alias shut='shutdown now'
alias shut!='systemctl poweroff -i'
alias reboot!='systemctl reboot -i'

if [[ -f "$(which bat)" ]]; then
  alias cat='bat -p --paging never'
fi

alias ls='ls --color=auto'

if [[ -f "$(which lsd)" ]]; then
  alias ls='lsd'
fi

alias l='ls -l'
alias ll='ls -la'
alias lll='ls -la --size bytes'

# Prepend cd to directory names automatically
shopt -s autocd 2> /dev/null
# Correct spelling errors during tab-completion
shopt -s dirspell 2> /dev/null
# # Correct spelling errors in arguments supplied to cd
shopt -s cdspell 2> /dev/null

PS1='[\u@\h \W]\$ '

