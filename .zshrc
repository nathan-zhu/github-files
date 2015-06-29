##Docker
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/cheggcn/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1

#set up boot2docker environment variables
#export DOCKER_HOST=tcp://192.168.59.103:2375
#unset DOCKER_TLS_VERIFY
#unset DOCKER_CERT_PATH

## docker
docker-ip() {
  boot2docker ip 2> /dev/null
}

##docker alias
alias docker-cip="docker inspect --format '{{ .NetworkSettings.IPAddress }}'"
alias docker-lip="docker inspect --format '{{ .NetworkSettings.IPAddress }}' $(docker ps -q)"
# Pop this into your ~/.bashrc (Linux) or ~/.bash_profile (Mac)
dockip() { docker inspect --format '{{ .NetworkSettings.IPAddress }}' "$@" }

#Add to bashrc/bash_profile to docker exec in passing the CID to dock-exec.
#E.g dock-exec $(docker ps -q) OR dock-exec 2e23d01384ac
dock-exec() { docker exec -i -t $@ bash ;}

##docker service restart
alias docker-restart="boot2docker ssh 'sudo /etc/init.d/docker restart'"

#Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export HOMEBREW_GITHUB_API_TOKEN=c456b60781db4e9f88f5fc42d560caf990183ad3
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
 ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

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
plugins=(git svn)

# User configuration
export PATH=/usr/local/share/npm/bin:$PATH
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
export PATH=/Users/cheggcn/.composer/vendor/bin:$PATH
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
alias cls='clear'
alias ll='ls -l'
alias la='ls -a'
alias vi='vim'
alias grep="grep --color=auto"
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'
alias sl="screen -ls"
alias sr="screen -r"
#echo "1. myos 查看本机操作系统、内核信息"
alias myos="cat /proc/version && cat /etc/redhat-release && cat /etc/issue"
##echo "2. myip 查看本机ip地址信息"
alias myip="/sbin/ifconfig | grep -a 'inet addr' | sed -e '/127\\.0\\.0\\.1/d;s/.*inet addr:\\([0-9\\.]\\+\\).*/\\1/'"
##echo "3. myps 查看系统中运行的进程完整命令行信息"
alias myps="ps -A -eo pid,ppid,args --width=2048"
##echo "4. mydate 按照格式显示当前日期及时间戳"
alias mydate="date +'%Y-%m-%d %H:%M:%S , tp=%s'"
##echo "5. myls 列出当前目录内容，按时间排序"
alias myls="ls -althr"
##echo "6. mybf 查找当前目录下大于100M的文件"
alias mybf="find . -size +102400k -print '%kk\t%p\n'"
##echo "7. mynf 查找当前目录下最近5分钟内修改过的文件"
alias mynf="find . -mmin -5 -print '%TY-%Tm-%Td %TH:%TM:%TS\t%p\n'"
##echo "8. mydf 查看磁盘空间和inode使用情况"
alias mydf="df -h && df -ih"
##echo "9. mymd 快速创建多层目录"
alias mymd="mkdir -p"
##echo "10.rmsvn 删除当前目录下所有的 .svn 目录"
alias rmsvn="find . -type d -name '.svn' -exec rm -rf {} \\; 2>/dev/null"

#export PATH="$PATH:$(brew --prefix homebrew/php/php53)/bin"
#export PATH="$PATH:$(brew --prefix homebrew/php/php55)/bin"
export PATH="$PATH:$(brew --prefix homebrew/php/php56)/bin"
PHP_AUTOCONF="/usr/local/bin/autoconf"

#php53
#alias php-fpm.start="launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.php53.plist"
#alias php-fpm.stop="launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.php53.plist"

##php55
#alias php-fpm.start="launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.php55.plist"
#alias php-fpm.stop="launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.php55.plist"

##php56
alias php-fpm.start="launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.php56.plist"
alias php-fpm.stop="launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.php56.plist"

alias php-fpm.restart='php-fpm.stop && php-fpm.start'

[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh


## git alias
alias glogga='git log --graph --abbrev-commit --decorate --format=format:"%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n""%C(white)%s%C(reset) %C(dim white)- %an%C(reset)" --all'
