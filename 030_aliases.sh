alias ls='ls -G'
alias sl="ls"
alias vault='cd /home/vault/capn/mpo1217'

alias coverage_package='coverage run --source=./ -m unittest discover'
alias coverage_report='coverage report -m'

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

alias cgrep="grep --color=auto"
alias cegrep="egrep --color=auto"
alias cfgrep="fgrep --color=auto"

alias bc='bc -l'

alias mkdir='mkdir -pv'

alias path='echo -e ${PATH//:/\\n}'

alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'

alias clean_pyc='rm -rf *.pyc'

alias nb='ipython notebook --pylab=inline'

alias vi='vim --cmd "set runtimepath+=$HOME/sandbox/rc/vim"'
alias vless='/usr/share/vim/vim72/macros/less.sh'

# safety first
alias ln='ln -i'
alias mv='mv -i'

# system
## pass options to free ## 
alias meminfo='free -m -l -t'
## get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
## get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
## Get server cpu info ##
alias cpuinfo='lscpu'
## older system use /proc/cpuinfo ##
##alias cpuinfo='less /proc/cpuinfo' ##
## get GPU ram on desktop / laptop## 
alias gpumeminfo='grep -i --color memory /var/log/Xorg.0.log'

alias wget='wget -c'

alias man="man -a"

function fawk {
    first="awk '{print "
    last="}'"
    cmd="${first}\$${1}${last}"
    eval $cmd
}

alias doctest='python -m doctest'

alias less='less -FSRX'

alias qlogin_1G_1h_1G='qlogin -l fsize=1G,ct=1:00:00,vmem=1G'
alias qlogin_2G_1h_1G='qlogin -l fsize=1G,ct=1:00:00,vmem=1G'
alias qlogin_5G_1h_1G='qlogin -l fsize=1G,ct=1:00:00,vmem=1G'
alias qlogin_10G_3h_1G='qlogin -l fsize=1G,ct=1:00:00,vmem=1G'
alias qlogin_15G_5h_1G='qlogin -l fsize=1G,ct=1:00:00,vmem=1G'
alias qlogin_20G_5h_1G='qlogin -l fsize=1G,ct=1:00:00,vmem=1G'

# cmake
alias rebuild_debug='rm -f CMakeCache.txt && cmake ../src -DSYSTEM_PACKAGES=True -DCMAKE_BUILD_TYPE=Debug && make -j3'
alias rebuild_release='rm -f CMakeCache.txt && cmake ../src -DSYSTEM_PACKAGES=True -DCMAKE_BUILD_TYPE=Release && make -j3'
