# oh-my-zsh stuff
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="dpitt"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# path stuff
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# aliases
alias trinidad="jruby -S --headless trinidad"
alias tweet="t update"
alias free="nocorrect free"
alias kill-svc="ps aux | grep bin/service.rb | grep -v grep | awk '{print \$2}'| xargs kill -9"
alias rake='noglob rake'
alias cap='noglob cap'

# vagrant shortcuts
alias vs='vagrant ssh'
alias vu='vagrant up'
alias vup='vagrant up --provider vmware_fusion'
alias vst='vagrant status'
alias vh='vagrant halt'
alias vr='vagrant reload'
