#! /bin/bash -x
#explicit declare

declare -a animals

# compound assignment

animals=(dog cat elephant rabbit tiger)

# print all values

echo ${animals[*]}

# print particular values
echo ${animals[4]}

# indirect declaration

count=0

youtubers[((count++))]='carry'
youtubers[((count++))]='bb'
youtubers[((count++))]='golu'
echo ${youtubers[@]}

# size of the array
echo size:${#animals[@]}

#delete element 
unset youtubers[4]
echo ${youtubers[@]}
