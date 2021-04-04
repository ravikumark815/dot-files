# Source
alias src="source ~/.bashrc"
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

# Expand the history size
export HISTFILESIZE=10000
export HISTSIZE=500
shopt -s histappend
PROMPT_COMMAND='history -a'
export PS1="${debian_chroot:+($debian_chroot)}\u@\h:\w\$"

# Aliases
alias vi="vim"
alias ll="ls --color -lthra"
alias sr="screen -r ravi"
alias sls="screen -ls"
alias ss="screen -S ravi"
alias grep="grep --color"
alias t="tmux attach -t ravi"
alias tr="tmux attach -t Ravi"
alias p4s="p4 sync ..."
alias p4sf="p4 sync -f ..."
alias upd="sudo apt update -y && sudo apt-get update -y && sudo apt upgrade -y && sudo apt-get upgrade -y && sudo apt autoremove -y && sudo apt autoclean -y && sudo apt clean -y"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Cisco
# Aliases
alias cel="ssh rreddyk@bgl-vms-vm1119.cisco.com"
alias fire="ssh rreddyk@bgl-vms-vm1078.cisco.com"
alias ct="cd /workspace/rreddyk-cel-tahoe/"
alias cl="cd /workspace/rreddyk-cel-fxplatform/liverpool/"
alias genswim="/auto/sspserv1/swims-signing/swims_tic_gen"

# Environment Variables
export P4PORT=sp4-p-fp-bgl-r1.cisco.com:1666
export P4CONFIG=.p4config
export P4PATH="/auto/perforce/p4bin"
export PATH=$PATH:/auto/perforce/p4bin
export P4USER=rreddyk
export NO_PROXY=localhost,127.0.0.1,10.0.0.0/24,.cisco.com,.ciscolabs.com
export FTP_PROXY=http://proxy-wsa.esl.cisco.com:80
export RSYNC_PROXY=http://proxy-wsa.esl.cisco.com:80
export HTTPS_PROXY=http://proxy-wsa.esl.cisco.com:80
export HTTP_PROXY=http://proxy-wsa.esl.cisco.com:80
export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Locale
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
