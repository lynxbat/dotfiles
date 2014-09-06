# oh-my-zsh stuff
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="dpitt"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# path stuff
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PATH=$PATH:$GOPATH/bin

export GOPATH=$HOME/src/go
export ZOMBIE=/Users/dpitt/src/zombie
export Z_CLI_CONFIG="/Users/dpitt/.zcli.conf"

# aliases
alias vi=vim
alias trinidad="jruby -S --headless trinidad"
alias cz="cd $ZOMBIE"
alias tweet="t update"
alias free="nocorrect free"
alias kill-svc="ps aux | grep bin/service.rb | grep -v grep | awk '{print \$2}'| xargs kill -9"
alias rake='noglob rake'
alias cap='noglob cap'
alias irb='pry'

# vagrant shortcuts
alias vs='vagrant ssh'
alias vp='vagrant provision'
alias vu='vagrant up'
alias vup='vagrant up --provider vmware_fusion'
alias vst='vagrant status'
alias vh='vagrant halt'
alias vr='vagrant reload'
