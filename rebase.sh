#!/bin/bash
source ~/Desktop/udbbbn/git-shell/util.sh

branch=$1

branchVerify $branch

curBranch= git rev-parse --abbrev-ref HEAD
echo "当前分支为 ${curBranch}"

echo "切换至分支 ${branch}"
git checkout $branch

echo "正在拉取远端分支 ${branch}"
git pull origin $branch

echo "切换至分支 ${curBranch}"
git checkout $curBranch

echo "正在变基"
git rebase $branch

echo "脚本执行完成"