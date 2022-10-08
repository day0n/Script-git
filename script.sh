#!/bin/zsh
declare -i number=$RANDOM+1000000000
declare -i max=7-3+1;
times=$(($number%$max+3));
echo $times

for((integer = 1; integer <= $times; integer++))
do
    echo 'hello niu'>>README.md
    git add README.md
    git commit -m "uptata README"
    git push
done




