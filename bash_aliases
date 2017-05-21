# PATH para que no tengamos que poner la ruta completa, simplemente iniciar elnombre del script y TAB
export DOCU=/home/pi/Documentos
export RPI=/home/pi/rpi
export SCRIPTS=$RPI/scripts
export CONF=$RPI/conf
export PY=$RPI/python
export PATH=$PATH:$SCRIPTS
#export JRE_HOME=/usr/lib/jvm/java-8-oracle/jre/bin
export EDITOR=nano
export AK=192.168.1.10

###############################################################################33
#ln -s /home/pi/r_k/conf/bashrc /root/.bashrc
#ln -s $CONF/bashrc $HOME/.bashrc

## Comandos
# some more ls aliases
export LS_OPTIONS='--color=auto'
eval "`dircolors`"
alias ls='ls $LS_OPTIONS -CF'
alias ll='ls $LS_OPTIONS -l'
alias la='ls $LS_OPTIONS -A'
alias l='ls $LS_OPTIONS -CFl'

## Directorios
alias rpi="cd $RPI && pwd && ls"
alias scripts="cd $SCRIPTS && pwd && ls"
alias py="cd $PY && pwd && ls"

## Redes
alias pw="sudo service hostapd start"
alias pwo="sudo service hostapd stop"
alias pwi="sudo update-rc.d hostapd enable"
alias pwio="sudo update-rc.d gpsd disable"
alias nm="sudo nmap -sP 192.168.1-3.1-255"
alias con="netstat -plant"
alias w="sudo nmcli d wifi"

## Administración
alias actualizar="sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get autoremove -y && sudo apt-get clean"
alias teclado="sudo setxkbmap -layout 'es,es' -model pc105"
alias vnc="vncserver :1 -geometry 1280x1024 -depth 16"
alias syn="synergyc -f $AK"
alias tra="nmon"
alias t="$SCRIPTS/control/temp.sh"
alias s="screen"
alias sr="screen -r"
alias srr="screen -d -r 728"
alias d="vnstat"
alias remoto="$SCRIPTS/instalacion/inst_remoto.sh"

## Video
alias cam="sudo modprobe bcm2835-v4l2"
alias camot="sudo motion -n"

#gestion de energia
alias apaga="sudo poweroff"
alias hiberna="sudo pm-hibernate"
alias wake="sudo ethtool -s eth0 wol g"

#Conexiones
alias 3g="sudo nmcli con up 3G"
alias 3go="sudo nmcli con down 3G"

#Gps
alias gps="cgps -s"
alias gpsr="gpxlogger -f $RPI/log/gps/gpslog'%d%m%Y%H%M'"
alias gpst="$RPI/programas/tralnx/tralnxd_start.sh &"
