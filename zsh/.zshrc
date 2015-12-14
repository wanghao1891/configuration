# Path to your oh-my-zsh installation.
export ZSH=/Users/huangling/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="mine"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/local/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# env
MYHOME=/Users/huangling/wanghao
BIN_HOME=$MYHOME/bin

PETITE_HOME=$MYHOME/bin/pcs
SCHEMEHEAPDIRS=".:$PETITE_HOME/lib/csv8.4/%m:"

NODE_HOME=$BIN_HOME/node

MONGODB_HOME=$BIN_HOME/mongodb

REDIS_HOME=$BIN_HOME/redis

NGINX_HOME=$BIN_HOME/nginx

MMS_HOME=$BIN_HOME/mongo-management-studio/lx-mms

SRC_HOME=$MYHOME/src
SRC_WORKTILE_HOME=$SRC_HOME/worktile

XORRISO_HOME=$BIN_HOME/xorriso

GO_HOME=$BIN_HOME/go
export GOROOT=$GO_HOME
#export GOPATH=$MYHOME/go

IPFS_HOME=$BIN_HOME/ipfs

IKARUS_HOME=$BIN_HOME/ikarus

JXCORE_HOME=$BIN_HOME/jxcore

PATH="$PATH:\
$PETITE_HOME/bin:\
$NODE_HOME/bin:\
$MONGODB_HOME/bin:\
$REDIS_HOME/bin:\
$MYHOME/bin:\
$NGINX_HOME/sbin:\
$XORRISO_HOME/bin:\
$GO_HOME/bin:\
$IPFS_HOME:\
$IKARUS_HOME/bin:\
$JXCORE_HOME/bin"
export SCHEMEHEAPDIRS PATH

export DOCKER_CERT_PATH=/Users/huangling/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1
export DOCKER_HOST=tcp://192.168.59.103:2376

## tools
alias e='/Users/huangling/wanghao/bin/emacs/bin/emacsclient -t'
alias git-push='git commit -a -m "."; git push origin master'

source ~/wanghao/tmp/conf/zsh/tool.sh

### vocabulary
alias rsync-vocabulary-media='rsync -avl "-e ssh -p 5381" root@116.50.32.212:/root/.vocabulary/apps/proxy-node/media /Users/huangling/wanghao/src/mine/proxy-node/'
alias rsync-vocabulary-out='rsync -avl "-e ssh -p 5381" root@116.50.32.212:/root/.vocabulary/apps/proxy-node/out /Users/huangling/wanghao/src/mine/proxy-node/'

## links
alias cd-wtfeed='cd ~/wanghao/src/worktile/wtfeed'
alias cd-wtweb='cd ~/wanghao/src/worktile/wtweb'
alias cd-lcweb='cd ~/wanghao/src/worktile/lcweb'

## services
alias start-docker='VBoxManage startvm docker -type headless'
alias start-mongodb='mongod -f $MYHOME/conf/mongodb/base.conf'
alias start-redis='cd $REDIS_HOME; redis-server'
alias start-nginx='nginx'
alias stop-nginx='nginx -s stop'
alias reload-nginx='nginx -s reload'
alias start-mongo-management-studio='node $MMS_HOME/server.js > /dev/null 2>&1 &'

## ssh
alias ssh-docker='ssh root@192.168.56.3'
alias ssh-msb-node-pri='ssh root@192.168.1.239'
alias ssh-msb-node-pub='ssh root@203.100.94.219'
alias ssh-tunnel-dongfong='ssh -N -f -D 0.0.0.0:1081 -p 5381 root@116.50.32.212'
alias ssh-dongfong='ssh -p 5381 root@116.50.32.212'

## applications
alias start-wtfeed='cd $SRC_WORKTILE_HOME/wtfeed; node app.js'
alias start-wtweb='cd $SRC_WORKTILE_HOME/wtweb; node app.js'

# add by wh
function start-emacs(){
    /Users/huangling/wanghao/bin/emacs/bin/emacs --daemon
}

pid=`ps -ef|grep "emacs --daemon"|grep -v grep|awk '{print $2}'`

if [ "$pid" = "" ]; then
    start-emacs
fi
