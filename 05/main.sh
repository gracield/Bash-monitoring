#!/bin/bash

start_time=$(date +%s)

if [[ $# != 1 ]]; then
  echo "допустим и обязателен ввод только одного параметра"
elif ! [[ -d $1 ]]; then
  echo "нужно ввести путь до директории для исследования"
elif [[ ${1: -1} != "/" ]]; then 
  echo "Путь до папки должен оканчиваться символом '/' "
else 
  export val=$1
  bash system_research.sh $val
  end_time=$(date +%s)
  echo "Script execution time (in seconds) = $(($end_time-$start_time))"
fi

