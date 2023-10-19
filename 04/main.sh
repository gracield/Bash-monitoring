#!/bin/bash

. ./color.conf

style=(6 2 6 4) # значения схемы цветовой по умолчанию


color=(0 0 0 0) # значение в конфигурационном файле по умолчанию нуль, как нет значений

if [[ "$column1_background" ]]; then
  color[0]=$column1_background
fi

if [[ "$column1_font_color" ]]; then
  color[1]=$column1_font_color
fi

if [[ "$column2_background" ]]; then
  color[2]=$column2_background
fi

if [[ "$column2_font_color" ]]; then
  color[3]=$column2_font_color
fi

for (( i = 0; i < 4; i++ )); do
  if [[ ${color[i]} == 0 ]]; then
    color[i]=${style[i]}
  fi
done

if [[ $color[0] == $style[1] || $style[2] == $style[3] ]];then
    echo "Проблема с контрастностью вывода. попробуйте еще раз"
    exit
fi

export val1=${color[0]}
export val2=${color[1]}
export val3=${color[2]}
export val4=${color[3]}


export def_val1=${style[0]}
export def_val2=${style[1]}
export def_val3=${style[2]}
export def_val4=${style[3]}

bash get.sh
