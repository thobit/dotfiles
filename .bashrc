#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -f "$HOME/.bash-git-prompt/gitprompt.sh" ]; then
    GIT_PROMPT_ONLY_IN_REPO=1
    source $HOME/.bash-git-prompt/gitprompt.sh
fi

# Keep it all, I have enough diskspace
HISTSIZE=
HISTFILESIZE=


alias ls='ls --color=auto'
alias l='ls'
alias ll='ls -l'
alias la='ls -a'
alias lsa='ls -ls'
alias mkdir='mkdir -p'
alias pms='sudo pacman -S'
alias pmss='pacman -Ss'
alias pmr='sudo pacman -Rs'
alias pmsyu='sudo pacman -Syu'
alias vbm='VBoxManage'
alias vbmh='VBoxManage startvm --type headless'
alias cdes='cd ~/Desktop'
alias cdev='cd ~/Development'
alias cdoc='cd ~/Documents'
alias cdow='cd ~/Downloads'
alias cdu='cd ~/Development/uni'
alias cdot='cd ~/Development/dotfiles'
alias vim='nvim'
alias vimi3='nvim ~/.config/i3/config'

export PS1="\[\033[38;5;253m\][\[$(tput sgr0)\]\[\033[38;5;172m\]\u\[$(tput sgr0)\]\[\033[38;5;220m\]@\h\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;33m\]\W\[$(tput sgr0)\]\[\033[38;5;253m\]]\[$(tput sgr0)\]\[\033[38;5;15m\]\\$ \[$(tput sgr0)\]"

# Setup to track dotfiles by git https://www.atlassian.com/git/tutorials/dotfiles
alias gitdot='/usr/bin/git --git-dir=$HOME/Development/dotfiles/ --work-tree=$HOME'
