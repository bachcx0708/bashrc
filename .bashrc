# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
## pyenv configs
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

##Personal config
export PATH=$HOME/.scripts:$PATH # add exec path home/.scripts priority high
sudo -n loadkeys $HOME/.scripts/ttymaps.kmap 2>/dev/null #swap caps and esc for vim

#Turn on/off bash and button config
stty -ixon ## Disable ctrl-s and ctrl-q
shopt -s autocd ## Allow auto change directory
HISTSIZE= HISTFILESIZE= ## History file size not declare -> infinity history

##Alias area
## Daily command change
alias vi="vim"
alias svi="sudo -E vim"
alias svim="sudo -E vim"


## Adding color
alias ls="ls -hN --color=auto --group-directories-first"
alias grep="grep --color=auto"


## MAKECOLOR PART
cat $HOME/.wellcome/wallbachcx1


