#!/bin/bash
source ~/Desktop/udbbbn/git-shell/util.sh

branch=$1

branchVerify $branch

statusCheck

curBranch=$(git rev-parse --abbrev-ref HEAD)
echo "当前分支为 ${curBranch}"

echo "切换至分支 ${branch}"
git checkout $branch

echo "正在合并"
git merge $curBranch

echo "正在推送远端 ${branch}"
git push origin $branch

echo "切换至分支 ${curBranch}"
git checkout $curBranch

echo "脚本执行完成"
