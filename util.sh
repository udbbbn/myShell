#!/bin/bash

branchVerify() {
    git rev-parse --verify "${1}"

    if [ $? -eq 0 ]; then
        echo "分支存在 继续执行"
    else 
        echo "分支不存在 退出脚本"
        exit
    fi
}

msgVerify() {
    if [ -z "${1}" ]; then
        echo "注释为空 退出脚本"
        exit
    fi
}

statusCheck() {
    git status --porcelain

    if [ $? != 0 ]; then
        echo "存在未提交的文件 退出脚本"
        exit
    fi
}