# oh-my-zsh stuff
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="dpitt"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# path stuff
export GOPATH=/Users/dpittman/src/go
export PATH=$PATH:$GOPATH/bin:/usr/local/go/bin

# aliases
alias vi='vim'
alias cdp='cd ~/src/go/src/github.com/intelsdi-x/pulse'
alias irssi='TERM=screen-256color irssi'
alias :tabe='vi'
alias ta="tmux attach -d -t"
alias tl="tmux ls"

alias tweeter='t timeline -e replies | less'
alias tweet='t tweet'

##########


alias gentoo="ssh -i ~/.ssh/gentoo root@gentoo"
alias centos="ssh -i ~/.ssh/centos root@centos"
alias pmem="ssh -i ~/.ssh/pmem root@pmem"
