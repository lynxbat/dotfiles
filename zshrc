# oh-my-zsh stuff
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="dpitt"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# aliases
alias vi='vim'
alias irssi='TERM=screen-256color irssi'
alias :tabe='vi'
alias ta="tmux attach -d -t"
alias tl="tmux ls"
