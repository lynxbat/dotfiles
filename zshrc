# oh-my-zsh stuff
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="dpitt"
plugins=(git)
source $ZSH/oh-my-zsh.sh

#functions

_get-etcd-pid() {
	ps aux | grep etcd-server | grep -v grep | awk '{print $2}'
}

etcd-status() {
	pid=$(_get-etcd-pid)
	if [ ! -z $pid ]; then
		echo "etcd is running [$pid]"
	else
		echo "etcd is stopped"
	fi
}
etcd-stop() {
	pid=$(_get-etcd-pid)
	if [ ! -z $pid ]; then
		kill -15 $pid
	fi
}

etcd-start() {
	pid=$(_get-etcd-pid)
	if [ -z $pid ]; then
		nohup etcd-server > ~/etcd.log &
	fi
}

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
