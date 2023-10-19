#!/bin/bash

#uname -r - отображение некоторой системной информации, например, ядро Линукс, версию имении и выпуск

export HOSTNAME=$HOSTNAME
export TIMEZONE=`timedatectl | grep "Time zone" | awk {'print $3, $4, $5'}`
export USER=$USER 
export OS="$OSTYPE $(uname -r)"
export DATE=$(date | awk {'print $3, $2, $7, $4'})
export UPTIME=$(uptime -p | awk {'print $2, $3, $4, $5'}) #чтобы без 'up'
export UPTIME_SEC=$(cat /proc/uptime | awk {'print $1'})

NAME=$(ip a | grep -m 1 2: | awk '{print $2}' | sed 's/://')
IP_WITH_MASK=$(ip a show $NAME| grep -m 4 inet | grep $NAME | awk {'print $2'})
IP_VAL=${IP_WITH_MASK%/*}
# % - удаляет все после следующего символа 
# # - удаляет все до указанного символа 
MASK=$(ip a show $NAME | grep inet | grep brd | awk '{print $4}')


export IP="$NAME: $IP_VAL"
export MASK="$NAME: $MASK"
export GATEWAY=$(ip rout | grep -m 1 default | awk '{print $3}')

export RAM_TOTAL=`free -m | grep "Mem" | awk '{printf "%.3f GB", ($2/1024)}'`
export RAM_USED=`free -m | grep "Mem" | awk '{printf "%.3f GB", ($3/1024)}'`
export RAM_FREE=`free -m | grep "Mem" | awk '{printf "%.3f GB", ($4/1024)}'`
# -m - вывод в мегобайтах
## h - вывод в удобном для человека виде
# B - вывод в байтах (М для вывода в мегобайтах)
export SPACE_ROOT=`df -hBM | grep -m 1 /dev/ | awk '{printf "%.2f MB", ($2)}'`
export SPACE_ROOT_USED=`df -hBM | grep -m 1 /dev/ | awk '{printf "%.2f MB", ($3)}'`
export SPACE_ROOT_FREE=`df -hBM | grep -m 1 /dev/ | awk '{printf "%.2f MB", ($4)}'`

bash output.sh
