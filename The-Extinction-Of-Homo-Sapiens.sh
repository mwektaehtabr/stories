#!/bin/bash

# THE EXTINCTION OF HOMO SAPIENS
# by mwektaehtabr
# distributed under a Creative Commons CC0 1.0 Universal Public Domain Dedication

unset statement extension priorities priority

statement="My number one priority in life is"
extension="that my number one priority in life is"
priorities=("myself." "my family." "my friends." "my work." "my religion." "my politics." "my country." "the planet.")
priority=0

stty -echo
for number in {0..7}; do
 clear
done
printf "\ec\e[3J\e[?25l"
echo "THE EXTINCTION OF HOMO SAPIENS"
echo
sleep 4
printf "$statement ${priorities[$priority]}"
while :; do
 printf "\e[${#priorities[$priority]}D"
 printf "\e[0J"
 if [ $priority -eq ${#priorities} ]; then
  priority=0
  printf "$extension "
 else
  priority=$(($priority+1))
 fi
 printf "${priorities[$priority]}"
 sleep 4
done