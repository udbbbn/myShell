#!/bin/bash
source ~/Desktop/udbbbn/git-shell/util.sh

branch=$1

branchVerify $branch

echo "执行暂存"
git stash

echo "切换至 ${branch} 分支"
git checkout "${branch}"

echo "脚本执行完成"