# oh-my-zsh stuff
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="dpitt"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# path stuff
export GOPATH=~/src/go
export PATH=$PATH:$GOPATH/bin:/usr/local/go/bin:~/.cargo/bin
export SNAP_PATH=~/src/go/src/github.com/intelsdi-x/snap/build

# aliases
alias vi='vim'
alias irssi='TERM=screen-256color irssi'
alias :tabe='vi'
alias ta="tmux attach -d -t"
alias tl="tmux ls"

# appcatalyst aliases
alias apc-start="appcatalyst vmpower on"
alias apc-stop="appcatalyst vmpower shutdown"
alias apc-new="appcatalyst vm clone"
alias apc-list="appcatalyst vm list"
alias apc-running="appcatalyst vmpower list"
alias apc-ip="appcatalyst guest getip"

# lab aliases
alias wcp12="ssh dpitt@10.4.1.12"
