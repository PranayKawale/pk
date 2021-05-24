#! /bin/bash -x
# function define
function add(){
local a=$1
local b+$2
local c=$(( a + b ))
echo $c
}
#take input from user
read -p "enter a:" a
read -p "enter b:" b
result="$( add $a $b )"
