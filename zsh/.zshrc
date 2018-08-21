# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/hao/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
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

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# add by hao.wang
# env
MYHOME=/Users/hao
BIN_HOME=$MYHOME/bin

EMACS_HOME=$BIN_HOME/emacs

PETITE_HOME=$MYHOME/bin/pcs
SCHEMEHEAPDIRS=".:$PETITE_HOME/lib/csv8.4/%m:"

CHEZ_HOME=$MYHOME/bin/chez
SCHEMEHEAPDIRS=$SCHEMEHEAPDIRS:$CHEZ_HOME/lib/csv9.4/a6osx/

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

WATCHMAN_HOME=$BIN_HOME/watchman

LYNX_HOME=$BIN_HOME/lynx

ANDROID_HOME=/Users/hao/bin/android-sdk-macosx

GOACCESS_HOME=$BIN_HOME/goaccess

KUBERNETES_HOME=$BIN_HOME/kubernetes

PATH="$PATH:\
$PETITE_HOME/bin:\
$CHEZ_HOME/bin:\
$NODE_HOME/bin:\
$MONGODB_HOME/bin:\
$REDIS_HOME/bin:\
$MYHOME/bin:\
$NGINX_HOME/sbin:\
$XORRISO_HOME/bin:\
$GO_HOME/bin:\
$IPFS_HOME:\
$IKARUS_HOME/bin:\
$JXCORE_HOME/bin:\
$WATCHMAN_HOME/bin:\
$LYNX_HOME/bin:\
$ANDROID_HOME/tools:\
$ANDROID_HOME/platform-tools:\
$GOACCESS_HOME/bin:\
$KUBERNETES_HOME/bin"
export SCHEMEHEAPDIRS PATH
export ANDROID_HOME

export DOCKER_CERT_PATH=/Users/hao/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1
export DOCKER_HOST=tcp://192.168.59.103:2376

## tools
alias e='TERM=xterm $EMACS_HOME/bin/emacsclient -t'
alias ec='TERM=xterm $EMACS_HOME/bin/emacs'
alias git-push='git commit -a -m "."; git push origin master'
alias node-v0.12.7='/Users/hao/bin/node-v0.12.7-darwin-x64/bin/node'
alias bower-v1.5.2='/Users/hao/bin/node-v0.12.7-darwin-x64/bin/bower'
alias npm-v2.11.3='/Users/hao/bin/node-v0.12.7-darwin-x64/bin/npm'
alias gulp-v3.9.0='/Users/hao/bin/node-v0.12.7-darwin-x64/bin/gulp'

function switch-node() {
    version=$1
    echo $version
    if [ -z "$version" ]; then
        echo 'Please input version number. E.g.'
        echo 'v0.12.7-darwin-x64'
        echo 'v4.1.2-darwin-x64'
        echo 'v4.4.5-darwin-x64'
        echo 'v5.7.0-darwin-x64'
        echo 'v6.2.0-darwin-x64'
        echo 'v6.3.0-darwin-x64'
        echo 'v7.8.0-darwin-x64'
        echo 'v8.4.0-darwin-x64'
        echo 'master'
        return 0
    fi

    echo "Switch version to $version."

    cd $BIN_HOME
    rm -f node
    ln -s node-$version node
    cd -
}

source ~/security/conf/zsh/.zshrc

### vocabulary
alias rsync-vocabulary-media='rsync -avl "-e ssh -p 5381" root@116.50.32.212:/root/.vocabulary/apps/proxy-node/media /Users/hao/src/mine/proxy-node/'
alias rsync-vocabulary-out='rsync -avl "-e ssh -p 5381" root@116.50.32.212:/root/.vocabulary/apps/proxy-node/out /Users/hao/src/mine/proxy-node/'

## links
SRC_HOME=$MYHOME/src
CONF_HOME=$MYHOME/conf
SRC_WORKTILE_HOME=$SRC_HOME/worktile
SRC_MINE_HOME=$SRC_HOME/mine
BOX_HOME=$MYHOME/box
alias cd-wtfeed='cd $SRC_WORKTILE_HOME/wtfeed'
alias cd-wtweb='cd $SRC_WORKTILE_HOME/wtweb'
alias cd-gaea='cd $SRC_WORKTILE_HOME/wt-gaea'
alias cd-mine='cd $SRC_MINE_HOME'
alias cd-monitor='cd $SRC_MINE_HOME/monitor'
alias cd-sample='cd $SRC_MINE_HOME/sample'
alias cd-conf='cd $CONF_HOME'
alias cd-bin='cd $BIN_HOME'
alias cd-food-client='cd $SRC_MINE_HOME/food-client'
alias cd-box='cd $BOX_HOME'
alias cd-doc='cd $BOX_HOME/doc'
alias cd-tools='cd $MYHOME/tools'

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
alias ssh-free-aws='ssh -i /Users/hao/aws/free-aws.pem ubuntu@52.221.209.186'
alias ssh-experiment-vm='ssh root@192.168.56.2'
alias ssh-pri-deploy='ssh yctech@192.168.77.158'
alias ssh-pri-deploy-x11='ssh -X yctech@192.168.77.158'
alias ssh-pri-deploy-vm-001='ssh ubuntu@192.168.77.7'
alias ssh-pri-deploy-vm-002='ssh ubuntu@192.168.77.32'
alias ssh-app-staging-ubuntu-14.04.04='ssh ubuntu@192.168.77.39'
alias ssh-app-dev-ubuntu-14.04.04='ssh ubuntu@192.168.77.33'
alias ssh-centos6.4-pri-deploy-vm-001='ssh root@192.168.77.36'
alias ssh-centos-pri-deploy-vm-002='ssh root@192.168.77.36'
alias ssh-centos7-pri-deploy-vm-001='ssh root@192.168.77.37'
alias ssh-app-staging-centos-7='ssh root@192.168.77.37'
alias ssh-mongodb-staging='ssh ubuntu@192.168.77.38'

## applications
alias start-wtfeed='cd $SRC_WORKTILE_HOME/wtfeed; node app.js'
alias start-wtweb='cd $SRC_WORKTILE_HOME/wtweb; node app.js'

# add by wh
function start-emacs(){
    /Users/hao/bin/emacs/bin/emacs --daemon
}

function stop-emacs() {
    pid=`ps -ef|grep "emacs --daemon"|grep -v grep|awk '{print $2}'`
    kill -9 $pid
}

pid=`ps -ef|grep "emacs --daemon"|grep -v grep|awk '{print $2}'`

if [ "$pid" = "" ]; then
    start-emacs
fi

DISABLE_AUTO_TITLE="true"

function set-tab-title() {
    echo -e "\033];$1\007"
}

function tree() {
    find . -print 2>/dev/null | awk '!/\.$/ { \
        for (i=1; i<NF; i++) { \
            printf("%4s", "|") \
        } \
        print "-- "$NF \
    }' FS='/'
}

## For Worktile Office Proxy Tunnel
alias proxy-worktile-office-on-premises-on='ssh -fN worktile-office-proxy-on-premises'
alias proxy-worktile-office-on-premises-check='ssh -O check worktile-office-proxy-on-premises'
alias proxy-worktile-office-on-premises-off='ssh -O exit worktile-office-proxy-on-premises'

alias proxy-worktile-office-worktile-me-on='ssh -fN worktile-office-proxy-worktile-me'
alias proxy-worktile-office-worktile-me-check='ssh -O check worktile-office-proxy-worktile-me'
alias proxy-worktile-office-worktile-me-off='ssh -O exit worktile-office-proxy-worktile-me'

alias proxy-worktile-office-on='proxy-worktile-office-on-premises-on'
alias proxy-worktile-office-check='proxy-worktile-office-on-premises-check'
alias proxy-worktile-office-off='proxy-worktile-office-on-premises-off'

alias proxy-worktile-us-on="ssh -fN worktile-us-proxy"
alias proxy-worktile-us-check='ssh -O check worktile-us-proxy'
alias proxy-worktile-us-off='ssh -O exit worktile-us-proxy'

alias proxy-worktile-tw-on="ssh -fN worktile-tw-proxy"
alias proxy-worktile-tw-check='ssh -O check worktile-tw-proxy'
alias proxy-worktile-tw-off='ssh -O exit worktile-tw-proxy'

alias proxy-worktile-de-on="ssh -fN worktile-de-proxy"
alias proxy-worktile-de-check='ssh -O check worktile-de-proxy'
alias proxy-worktile-de-off='ssh -O exit worktile-de-proxy'

alias proxy-wt-gateway-aws-on="ssh -fN wt-gateway-aws-from-tunnel-proxy"
alias proxy-wt-gateway-aws-check='ssh -O check wt-gateway-aws-from-tunnel-proxy'
alias proxy-wt-gateway-aws-off='ssh -O exit wt-gateway-aws-from-tunnel-proxy'

## start proxy automatically
#is_proxy_on=`proxy-worktile-office-check|grep 'Master running'`
#if [ "$is_proxy_on" = "" ]; then
#    proxy-worktile-office-on
#fi

# virtual box
alias start-on-premises-pack-ubuntu-16.04.3='VBoxManage startvm on-premises-pack-ubuntu-16.04.3 -type headless'
