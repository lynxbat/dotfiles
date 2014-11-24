# oh-my-zsh stuff
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="dpitt"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# path stuff
export PATH=$PATH:$GOPATH/bin:/usr/local/go/bin
export GOPATH=$HOME/src/go

# aliases
alias vi='vim'

# vagrant shortcuts
alias vs='vagrant ssh'
alias vp='vagrant provision'
alias vu='vagrant up'
alias vup='vagrant up --provider vmware_fusion'
alias vst='vagrant status'
alias vh='vagrant halt'
alias vr='vagrant reload'
