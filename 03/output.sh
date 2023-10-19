#!/bin/bash

BLACK='\033[30m'
BGBLACK='\033[40m'

RED='\033[31m'
BGRED='\033[41m'

GREEN='\033[32m'
BGGREEN='\033[42m'

BLUE='\033[34m'
BGBLUE='\033[44m'

PURPLE='\033[35m'
BGPURPLE='\033[45m'

WHITE='\033[37m'
BGWHITE='\033[47m'

reset="\033[0m" # код сброса цвета 


font=( $reset $WHITE $RED $GREEN $BLUE $PURPLE $BLACK )
back_ground=( $reset $BGWHITE $BGRED $BGGREEN $BGBLUE $BGPURPLE $BGBLACK )

word=${back_ground[$val1]}${font[$val2]}
variable=${back_ground[$val3]}${font[$val4]}

    echo -e "${word}HOSTNAME${reset} = ${variable}${HOSTNAME}${reset}"
    echo -e "${word}TIMEZONE${reset} = ${variable}${TIMEZONE}${reset}"
    echo -e "${word}USER${reset} = ${variable}${USER}${reset}"
    echo -e "${word}OS${reset} = ${variable}${OS}${reset}"
    echo -e "${word}DATE${reset} = ${variable}${DATE}${reset}"
    echo -e "${word}UPTIME${reset} = ${variable}${UPTIME} ${reset}"
    echo -e "${word}UPTIME_SEC${reset} = ${variable}${UPTIME_SEC}${reset}"
    echo -e "${word}IP${reset} = ${variable}${IP}${reset}"
    echo -e "${word}MASK${reset} = ${variable}${MASK}${reset}"
    echo -e "${word}GATEWAY${reset} = ${variable}${GATEWAY}${reset}"
    echo -e "${word}RAM_TOTAL${reset} = ${variable}${RAM_TOTAL}${reset}"
    echo -e "${word}RAM_USED${reset} = ${variable}${RAM_USED}${reset}"
    echo -e "${word}RAM_FREE${reset} = ${variable}${RAM_FREE}${reset}"
    echo -e "${word}SPACE_ROOT${reset} = ${variable}${SPACE_ROOT}${reset}"
    echo -e "${word}SPACE_ROOT_USED${reset} = ${variable}${SPACE_ROOT_USED}${reset}"
    echo -e "${word}SPACE_ROOT_FREE${reset} = ${variable}${SPACE_ROOT_FREE}${reset}"

