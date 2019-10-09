#!/bin/bash
source ~/Desktop/udbbbn/git-shell/util.sh

if [ -z "${1}" ]; then
    echo "userName 为空 退出脚本"
    exit
fi

if [ -z "${2}" ]; then
    echo "userEmail 为空 退出脚本"
    exit
fi

git config --global user.name $1

git config --global user.email $2

echo "脚本执行完成"
