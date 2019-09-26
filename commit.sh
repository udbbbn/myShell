#!/bin/bash
source ~/Desktop/udbbbn/git-shell/util.sh

msg=$1

msgVerify $msg

echo "添加修改文件至暂存"
git add .

echo "提交文件至暂存"
git commit -m "${msg}"

echo "脚本执行完成"