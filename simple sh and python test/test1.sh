#!/bin/sh

array=(1 2 3 4)

for num in ${array[@]}; do
    python ./test1.py
    echo $num"回目のループです"
done