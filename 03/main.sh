#!/bin/bash

if [[ $# != 4 ]]; then
  echo "Нужно 4 параметра"
else 
  for i in "$@"
  do 
    if [[ $i != [1-6] ]]; then 
      echo "Ошибка ввода"
      exit
    fi
  done
  if [[ $1 == $2 || $3 == $4 ]]; then
    echo "Проблема с контрастностью вывода. попробуйте еще раз"
    exit
  fi
  export val1=$1
  export val2=$2
  export val3=$3
  export val4=$4
  bash get.sh
fi
  
