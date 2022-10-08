#!/bin/zsh
declare -i number=$RANDOM+1000000000
declare -i max=7-3+1;
times=$(($number%$max+3));
echo "执行次数：" $times
time=$(date "+%Y%m%d-%H%M%S")
for((integer = 1; integer <= $times; integer++))
do
    echo $time>README.md
    git add README.md
    git commit -m "uptata README"
    git push
done




