#!/bin/zsh
function rand(){
    min=$1
    max=$(($2-$min+1))
    num=$(date +%s%N)
    echo $(($num%$max+$min))
}

times=$(rand 1 10)

for((integer = 1; integer <= times; integer++))
do
    echo $times>>README.md
done

git add README.md
git commit -m "uptata README"
git push


