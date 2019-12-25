# Source
alias src="source ~/.bashrc"
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

# Perforce
export P4CLIENT=ravikumarreddyk_mamba_ng
export P4USER=ravikumarreddyk
export P4PORT=p4proxy-blr.eng.sonicwall.com:1999
export P4ROOT=/home/ravi/ng

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
alias t="tmux attach -t Ravi"

# API
alias vin="curl -k -i -u "admin:password" -X POST http://10.5.183.113:8000/system/login"
alias vout="curl -k -i -u "admin:password" -X DELETE https://10.5.183.113:8000/api/sonicos/auth"

# SonicWALL
alias wset="cd ~/ng/SonicOS/WorkSet"
alias 54="cd ~/ng/SonicOS/WorkSet/6.5.4/bugfix_6.5.4"
alias 545="cd ~/ng/SonicOS/WorkSet/6.5.4/bugfix_6.5.4.5"
alias rfi="cd ~/ng/SonicOS/WorkSet/6.5.4/RFE_6545_snwl_switch_integ"
alias rfe="cd ~/ng/SonicOS/WorkSet/6.5.4/RFE_6545_snwl_switch_ecli"
alias rfr="cd ~/ng/SonicOS/WorkSet/6.5.4/RFE_6545_snwl_switch_ravi"
alias v="cd /opt/codes/ravi/sonicosv"
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
        cd ~/ng/SonicOS/WorkSet/6.5.4/bugfix_6.5.4.5/
        p4 sync ...
        echo ""
		echo "Synchronizing RFE_6545_snwl_switch_integ"
		cd ~/ng/SonicOS/WorkSet/6.5.4/RFE_6545_snwl_switch_integ/
		p4 sync ...
		echo ""
		echo "Synchronizing RFE_6545_snwl_switch_ravi"
		cd ~/ng/SonicOS/WorkSet/6.5.4/RFE_6545_snwl_switch_ravi/
		p4 sync ...
		echo ""
}

swlc(){
		echo ""
        echo "Synchronizing 6.5.4.5"
        cd ~/ng/SonicOS/WorkSet/6.5.4/bugfix_6.5.4.5/
        p4 sync ...
		ctags -R
        echo ""
        echo "Synchronizing RFE_6545_snwl_switch_ravi ..."
        cd ~/ng/SonicOS/WorkSet/6.5.4/RFE_6545_snwl_switch_ravi/
        p4 sync ...
		ctags -R
        echo ""
        echo "Synchronizing RFE_6545_snwl_switch_integ ..."
        cd ~/ng/SonicOS/WorkSet/6.5.4/RFE_6546_snwl_switch_integ/
        p4 sync ...
		ctags -R
        echo ""
}

buildrf(){
        echo "Start of buildall"
        echo ""
        echo "RFE_654_snwl_switch"
        echo ""
        cd ~/ng/SonicOS/WorkSet/6.5.4/RFE_654_snwl_switch/
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

build654(){
        echo "Start of buildall"
        echo ""
        echo "bugfix_6.5.4"
        echo ""
        cd ~/ng/SonicOS/WorkSet/6.5.4/bugfix_6.5.4/
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
