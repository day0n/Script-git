#!/bin/zsh
function rand(){
    min=$1
    max=$(($2-$min+1))
    num=$(date +%s%N)
    echo $(($num%$max+$min))
}

times=$(rand 1 10)

for((integer = 1; integer <= 2; integer++))
do
    echo 'hello niu'>>README.md
    git add README.md
    git commit -m "uptata README"
    git push
done




