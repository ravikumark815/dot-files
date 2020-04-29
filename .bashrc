# Source
alias src="source ~/.bashrc"
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

# Perforce
export P4CLIENT=ravikumarreddyk_mamba_ng
export P4USER=ravikumarreddyk
export P4PORT=p4proxy-blr.eng.sonicwall.com:1999
export P4ROOT=/opt/codes/ravi/ng

# Expand the history size
export HISTFILESIZE=10000
export HISTSIZE=500
shopt -s histappend
PROMPT_COMMAND='history -a'
export PS1="${debian_chroot:+($debian_chroot)}\u@\h:\w\$"

# Aliases
alias vi="vim"
alias ll="ls --color -lthra"
alias sr="screen -r"
alias sls="screen -ls"
alias ss="screen -S"
alias grep="grep --color"
alias t="tmux attach -t ravi"
alias tr="tmux attach -t Ravi"
alias p4s="p4 sync ..."
alias p4sf="p4 sync -f ..."
alias con="ssh sonicosdev:serial@10.194.5.102"
alias moj="ssh sonicostools@10.194.61.82"

# API
alias vin="curl -k -i -u "admin:password" -X POST https://10.194.63.78/api/sonicos/system/login"
alias vout="curl -k -i -u "admin:password" -X DELETE https://10.5.183.113:8000/api/sonicos/auth"

# SonicWALL
alias 54="cd /opt/codes/ravi/ng/SonicOS/WorkSet/6.5.4/bugfix_6.5.4.5"
alias rfi="cd /opt/codes/ravi/ng/SonicOS/WorkSet/6.5.4/RFE_6545_snwl_switch_integ"
alias rfe="cd /opt/codes/ravi/ng/SonicOS/WorkSet/6.5.4/RFE_6545_snwl_switch_ecli"
alias rfr="cd /opt/codes/ravi/ng/SonicOS/WorkSet/6.5.4/RFE_6545_snwl_switch_ravi"
alias rfu="cd /opt/codes/ravi/ng/SonicOS/WorkSet/6.5.4/RFE_6545_snwl_switch_ui"
alias v="cd /home/ravi/sonicos/sonicosv"
alias vo="cd /opt/codes/ravi/sonicosv"
alias m300="make -j 16 sw_tz300-mc-stdeb"
alias m300d="make -j 16 sw_tz300-mc-stdeb SW_BUILD_NOT_LOAD_DEPENDENCIES=1"
alias m400="make -j 16 sw_tz400-mc-stdeb"
alias m400d="make -j 16 sw_tz400-mc-stdeb SW_BUILD_NOT_LOAD_DEPENDENCIES=1"
alias m500="make -j 16 sw_tz500-mc-stdeb"
alias m500d="make -j 16 sw_tz500-mc-stdeb SW_BUILD_NOT_LOAD_DEPENDENCIES=1"
alias m600="make -j 16 sw_tz600-mc-stdeb"
alias m600d="make -j 16 sw_tz600-mc-stdeb SW_BUILD_NOT_LOAD_DEPENDENCIES=1"
alias m260="make -j 16 sw_octeon2600-mc-stdeb"
alias m260d="make -j 16 sw_octeon2600-mc-stdeb SW_BUILD_NOT_LOAD_DEPENDENCIES=1"
alias m360="make -j 16 sw_octeon3600-mc-stdeb"
alias m360d="make -j 16 sw_octeon3600-mc-stdeb SW_BUILD_NOT_LOAD_DEPENDENCIES=1"
alias m460="make -j 16 sw_octeon4600-mc-stdeb"
alias m460d="make -j 16 sw_octeon4600-mc-stdeb SW_BUILD_NOT_LOAD_DEPENDENCIES=1"
alias m560="make -j 16 sw_octeon5600-mc-stdeb"
alias m560d="make -j 16 sw_octeon5600-mc-stdeb SW_BUILD_NOT_LOAD_DEPENDENCIES=1"
alias m660="make -j 16 sw_octeon6600-mc-stdeb"
alias m660d="make -j 16 sw_octeon6600-mc-stdeb SW_BUILD_NOT_LOAD_DEPENDENCIES=1"
alias m565="make -j 16 sw_octeon6600-mc-stdeb"
alias m565d="make -j 16 sw_octeon6600-mc-stdeb SW_BUILD_NOT_LOAD_DEPENDENCIES=1"
alias m265="make -j 16 sw_octeon2650-mc-stdeb"
alias m265d="make -j 16 sw_octeon2650-mc-stdeb SW_BUILD_NOT_LOAD_DEPENDENCIES=1"
alias m365="make -j 64 sw_octeon3650-mc-stdeb"
alias m365d="make -j 64  sw_octeon3650-mc-stdeb SW_BUILD_NOT_LOAD_DEPENDENCIES=1"
alias m465="make -j 16 sw_octeon4650-mc-stdeb"
alias m465d="make -j 16 sw_octeon4650-mc-stdeb SW_BUILD_NOT_LOAD_DEPENDENCIES=1"
alias m565="make -j 16 sw_octeon5650-mc-stdeb"
alias m565d="make -j 16 sw_octeon5650-mc-stdeb SW_BUILD_NOT_LOAD_DEPENDENCIES=1"
alias m665="make -j 16 sw_octeon6650-mc-stdeb"
alias m665d="make -j 16 sw_octeon6650-mc-stdeb SW_BUILD_NOT_LOAD_DEPENDENCIES=1"

swl(){
		echo ""
        echo "Synchronizing 6.5.4.5 ..."
        cd /opt/codes/ravi/ng/SonicOS/WorkSet/6.5.4/bugfix_6.5.4.5/
        p4 sync ...
        echo ""
		echo "Synchronizing RFE_6545_snwl_switch_integ"
		cd /opt/codes/ravi/ng/SonicOS/WorkSet/6.5.4/RFE_6545_snwl_switch_integ/
		p4 sync ...
		echo ""
		echo "Synchronizing RFE_6545_snwl_switch_ravi"
		cd /opt/codes/ravi/ng/SonicOS/WorkSet/6.5.4/RFE_6545_snwl_switch_ravi/
		p4 sync ...
		echo ""
}

swlc(){
		echo ""
        echo "Synchronizing 6.5.4.5"
        cd /opt/codes/ravi/ng/SonicOS/WorkSet/6.5.4/bugfix_6.5.4.5/
        p4 sync ...
		ctags -R
        echo ""
        echo "Synchronizing RFE_6545_snwl_switch_ravi ..."
        cd /opt/codes/ravi/ng/SonicOS/WorkSet/6.5.4/RFE_6545_snwl_switch_ravi/
        p4 sync ...
		ctags -R
        echo ""
        echo "Synchronizing RFE_6545_snwl_switch_integ ..."
        cd /opt/codes/ravi/ng/SonicOS/WorkSet/6.5.4/RFE_6546_snwl_switch_integ/
        p4 sync ...
		ctags -R
        echo ""
}

bsa(){
        echo "Start of buildall"
        echo ""
        echo "RFE_654_snwl_switch_ui"
        echo ""
        cd /opt/codes/ravi/ng/SonicOS/WorkSet/6.5.4/RFE_654_snwl_switch_ui/
        p4 sync ...
        echo ""
		make -j 16 sw_tz300-mc-stdeb
        echo "Done-300"
        make -j 16 sw_tz300p-mc-stdeb
        echo "Done-300p"
		make -j 16 sw_tz400-mc-stdeb
        echo "Done-400"
		make -j 16 sw_tz500-mc-stdeb
        echo "Done-500"
		make -j 16 sw_tz600-mc-stdeb
        echo "Done-600"
        make -j 16 sw_tz600p-mc-stdeb
        echo "Done-600p"
		make -j 16 sw_octeon2600-mc-stdeb
        echo "Done-2600"
		make -j 16 sw_octeon3600-mc-stdeb
        echo "Done-3600"
		make -j 16 sw_octeon4600-mc-stdeb
        echo "Done-4600"
        make -j 16 sw_octeon5600-mc-stdeb
        echo "Done-5600"
        make -j 16 sw_octeon6600-mc-stdeb
        echo "Done-6600"
        make -j 16 sw_octeon2650-mc-stdeb
        echo "Done-2650"
        make -j 16 sw_octeon3650-mc-stdeb
        echo "Done-3650"
        make -j 16 sw_octeon4650-mc-stdeb
        echo "Done-4650"
        make -j 16 sw_octeon5650-mc-stdeb
        echo "Done-5650"
        make -j 16 sw_octeon6650-mc-stdeb
        echo "Done-6650"
        echo ""
        echo "End of buildall"
}

bba(){
        echo "Start of buildall"
        echo ""
        echo "bugfix_6.5.4.5"
        echo ""
        cd /opt/codes/ravi/ng/SonicOS/WorkSet/6.5.4/bugfix_6.5.4.5/
        p4 sync ...
        echo ""
		make -j 16 sw_tz300-mc-stdeb
        echo "Done-300"
		make -j 16 sw_tz300w-mc-stdeb
        echo "Done-300w"
        make -j 16 sw_tz300p-mc-stdeb
        echo "Done-300p"
		make -j 16 sw_tz400-mc-stdeb
        echo "Done-400"
		make -j 16 sw_tz400w-mc-stdeb
        echo "Done-400w"
		make -j 16 sw_tz500-mc-stdeb
        echo "Done-500"
		make -j 16 sw_tz500w-mc-stdeb
        echo "Done-500w"
		make -j 16 sw_tz600-mc-stdeb
        echo "Done-600"
        make -j 16 sw_tz600p-mc-stdeb
        echo "Done-600p"
		make -j 16 sw_octeon2600-mc-stdeb
        echo "Done-2600"
		make -j 16 sw_octeon3600-mc-stdeb
        echo "Done-3600"
		make -j 16 sw_octeon4600-mc-stdeb
        echo "Done-4600"
        make -j 16 sw_octeon5600-mc-stdeb
        echo "Done-5600"
        make -j 16 sw_octeon6600-mc-stdeb
        echo "Done-6600"
        make -j 16 sw_octeon2650-mc-stdeb
        echo "Done-2650"
        make -j 16 sw_octeon3650-mc-stdeb
        echo "Done-3650"
        make -j 16 sw_octeon4650-mc-stdeb
        echo "Done-4650"
        make -j 16 sw_octeon5650-mc-stdeb
        echo "Done-5650"
        make -j 16 sw_octeon6650-mc-stdeb
        echo "Done-6650"
        echo ""
        echo "End of buildall"
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
