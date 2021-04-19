---
title: git常用操作与技巧
date: 2020-03-30 19:47:12
tags:
  - git
  - 工作技能
categories:
  - 工作技能
---


git pull <远程主机名> <远程分支名>:<本地分支名>
如拉取远程的master分支到本地wy分支：
git pull origin master:wy

git 查看远程仓库地址
git remote -v
git 修改远程地址
 git remote set-url origin xxxx(远程地址)

 git remote add github https://github.com/allwefantasy/mlsql.git

从已有分支新建分支：
git checkout -b 本地分支名x origin/远程分支名x
提交本地test分支作为远程的test分支：
git push origin test:test 
删除本地分支 
git branch -d <BranchName>

对比本地分支与远程分支的差异：
首先更新远程分支 git fetch origin
详细信息
git diff local_branch origin/remote_branch
文件统计值：
git diff --stat local_branch origin/remote_branch
合并远程分支最新代码到本地分支
 git merge origin/remote_branch