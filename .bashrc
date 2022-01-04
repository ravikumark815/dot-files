# Expand the history size
export HISTFILESIZE=10000
export HISTSIZE=500
shopt -s histappend
PROMPT_COMMAND='history -a'
export PS1="${debian_chroot:+($debian_chroot)}\u@\h:\w\$"

# Aliases
alias vi="vim"
alias ll="ls --color -lha"
alias lt="ls --color -lthra"
alias sr="screen -r"
alias srd="screen -r -d"
alias sls="screen -ls"
alias ss="screen -S"
alias grep="grep --color"
alias t="tmux attach -t ravi"
alias tn="tmux new -s ravi"
alias tk="tmux kill-session -t ravi"
alias p4s="p4 sync ..."
alias p4sf="p4 sync -f ..."
alias updu="sudo apt-get update -y && echo "----------------" && sudo apt-get upgrade -y && echo "----------------" &&  sudo apt-get autoremove -y && echo "----------------" && sudo apt-get autoclean -y && echo "----------------" && sudo apt clean -y && echo "----------------""
alias updc="sudo yum check-update -y && echo "----------------" && sudo yum update -y && echo "----------------" && sudo yum upgrade -y && echo "----------------" &&  sudo yum autoremove -y && echo "---------------""
alias src="source ~/.bashrc"

function build_cscope_db_func()
{
		cscope -Rb
		export CSCOPE_DB=$PWD/cscope.out
}
alias csbuild=build_cscope_db_func

function cscope_export_db_func()
{
		export CSCOPE_DB=$PWD/cscope.out
}
alias csexport=cscope_export_db_func

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Cisco
# Aliases
alias cel="ssh rreddyk@bgl-vms-vm1067.cisco.com"
alias fcel="ssh rreddyk@bgl-vms-vm1173.cisco.com"
alias fire="ssh rreddyk@bgl-vms-vm1078.cisco.com"
alias ub="ssh rreddyk@bgl-vms-vm1241.cisco.com"
alias kvm="ssh kvmuser@u71c01kvm0324"
alias genswim="/auto/sspserv1/swims-signing/swims_tic_gen"
alias genswimf="/nfs/netboot/sspserv1/swims-signing/swims_tic_gen"
alias cl="cd /workspace/rreddyk-morden/morden/FXOS_2_11_1/"
alias dpd="cd fxos/linux/wrlinux/bitbake_build/tmp-glibc/work/intel_x86_64-wrs-linux/dpdk/19.11.3-r0/git/"

test1() {
	a=$(pwd | sed 's|.*workspace/\([^/]*\)/.*|\1|')
	echo "${a}"
}
precommit() {
	a=$(pwd | sed 's|.*workspace/\([^/]*\)/.*|\1|')
	echo "${a}"
	echo "------------------------------------------"
	echo "Building QCOW2 (OCI | KVM)"
	echo "------------------------------------------"
	echo ""
	make desmo.qcow2
	cp desmo.qcow2 /auto/tftp-blr-users4/${a}.qcow2
	echo ""
	echo "------------------------------------------"
	echo "Building VHD (AZURE)"
	echo "------------------------------------------"
	echo ""
	make desmo.vhd
	cp desmo.vhd /auto/tftp-blr-users4/${a}.vhd
	echo ""
	echo "------------------------------------------"
	echo "Building RAW (GCP)"
	echo "------------------------------------------"
	echo ""
	make desmo.raw
	cp asav-gcp.tar.gz /auto/tftp-blr-users4/${a}.tar.gz
	echo ""
	echo "------------------------------------------"
	echo "Building VHDX (HYPER-V)"
	echo "------------------------------------------"
	echo ""
	make vhdx
	cp desmo.vhdx /auto/tftp-blr-users4/${a}.vhdx
	echo ""
}

# Environment
export P4PORT=sp4-p-fp-bgl-r1.cisco.com:1666
export P4CONFIG=.p4config
export P4PATH="/auto/perforce/p4bin"
export PATH=$PATH:$P4PATH
export P4USER=rreddyk
export NO_PROXY=localhost,127.0.0.1,10.0.0.0/24,.cisco.com,.ciscolabs.com
export FTP_PROXY=http://proxy-wsa.esl.cisco.com:80
export RSYNC_PROXY=http://proxy-wsa.esl.cisco.com:80
export HTTPS_PROXY=http://proxy-wsa.esl.cisco.com:80
export HTTP_PROXY=http://proxy-wsa.esl.cisco.com:80
export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export COVPERL=/usr/cisco/bin/perl
declare -x HTTP_PROXY="http://proxy-wsa.esl.cisco.com:80"
declare -x LANG="en_US.UTF-8"
declare -x LANGUAGE="en_US.UTF-8"
declare -x LC_ALL="en_US.UTF-8"
declare -x LD_LIBRARY_PATH="/usr/X11R6/lib"
declare -x LESSOPEN="||/usr/bin/lesspipe.sh %s"
declare -x LOCAL_PATH="/usr/cisco/bin:/usr/cisco/etc"
export PATH=$PATH:/auto/ssp-blr/automation/ats/ats5.3.0/bin:/auto/ssp-blr/automation/ats/ats5.3.0/etc:/auto/ssp-blr/automation/ats/ats5.3.0/ats_easy/bin:/auto/ssp-blr/automation/ats/ats5.3.0/ats_easy/etc:/sw/packages/ccache/current/bin:/opt/teambuilder/bin:/users/suspatil/bin:/usr/cisco/bin:/usr/atria/bin:/usr/openwin/bin:/users/suspatil/bin:/usr/ucb:/usr/local/bin:/usr/etc:/usr/bin:/usr/sbin:/usr/local/ddts/bin:/usr/bin/X11:/usr/local/bin/mh:/auto/sw/packages/snmpr/14.0.1.0/solaris2bin:/nfs/scmlog/sync-tools/bin/:/nfs/scmlog/synctools/contrib:/nfs/scmlog/sync-tools/man:/usr/local/cse/bin:/usr/X11R6/bin:/nfs/ddts/ddtshome/bin:/auto/ses/bin:/usr/X/bin:/bin:/auto/cscie/idxtools:/auto/binos-tools/bin:/auto/perforce/p4bin:/sbin:/auto/stbu-tools/sw/share/apache-ant-1.10.1/bin:/auto/stbu-tools/releng/python_ve/v1.6.0/bin/:/usr/lib64/qt-3.3/bin:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/opt/puppetlabs/bin:/auto/stbu-tools/32/sw/bin/:/usr/cisco/bin:/usr/cisco/packages/perl/perl-5.8.9/lib:/usr/cisco/packages:/usr/cisco/bin/perl:/auto/perforce/p4bin:/usr/lib:/usr/lib64:/usr/local/bin/perl:/auto/perforce/p4bin/current/p4:/auto/ssp-blr/automation/ats/ats5.3.0/bin:/auto/ssp-blr/automation/ats/ats5.3.0/etc:/auto/ssp-blr/automation/ats/ats5.3.0/ats_easy/bin:/auto/ssp-blr/automation/ats/ats5.3.0/ats_easy/etc:/sw/packages/ccache/current/bin:/opt/teambuilder/bin:/usr/cisco/bin:/usr/atria/bin:/usr/openwin/bin:/usr/ucb:/usr/local/bin:/usr/etc:/usr/bin:/usr/sbin:/usr/local/ddts/bin:/usr/bin/X11:/usr/local/bin/mh:/auto/sw/packages/snmpr/14.0.1.0/solaris2bin:/nfs/scmlog/sync-tools/bin/:/nfs/scmlog/synctools/contrib:/nfs/scmlog/sync-tools/man:/usr/local/cse/bin:/usr/X11R6/bin:/nfs/ddts/ddtshome/bin:/auto/ses/bin:/usr/X/bin:/bin:/auto/cscie/idxtools:/auto/binos-tools/bin:/auto/perforce/p4bin:/sbin
export PATH=/usr/cisco/packages:$PATH
export PATH=/usr/cisco/packages/perl/perl-5.8.9/lib:$PATH
export PATH=/workspace/rreddyk-asdm/jdk/node-v6.11.0-linux-x64/bin:$PATH
export JAVA_HOME=/workspace/jdk/
export PATH=/usr/bin:$PATH
export IMS_CACHE=/workspace/ms_images
export ASA_TARBALL_URL=file:///workspace/ims_images/asa_archive_pkg.tbz2
export ASA_QCOW2_URL=file:///workspace/ims_images/aquila.qcow2
export OCTEON_TARBALL_URL=file:///workspace/ims_images/asa_archive_octeon.tbz2
