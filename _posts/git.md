## Git 学习

### git fsck
git-fsck - Verifies the connectivity and validity of the objects in the database

### git hash-object
git-hash-object - Compute object ID and optionally creates a blob from a file

### git cat-file
git-cat-file - Provide content or type and size information for repository objects

### git ls-tree
git-ls-tree - List the contents of a tree object


### git revert
回滚到指定commit版本，用一个新提交来消除一个历史提交所做的任何修改.
举例:
git revert 57dacd7f796a4119da2aa75366367b06815aacac

### git reset
三种模式：git reset [--soft | --mixed | --hard

mixed：git rest 默认动作，会保留源码,只是将git commit和index 信息回退到了某个版本
soft：保留源码,只回退到commit 信息到某个版本.不涉及index的回退
hard：源码也会回退到某个版本,commit和index 都回回退到某个版本(注意,这种方式是改变本地代码仓库源码)

### git log
举例：git log -n 10 -p --stat
git log 命令支持的选项
-p 按补丁格式显示每个更新之间的差异。
--stat 显示每次更新的文件修改统计信息。
--shortstat 只显示 --stat 中最后的行数修改添加移除统计。
--name-only 仅在提交信息后显示已修改的文件清单。
--name-status 显示新增、修改、删除的文件清单。
--abbrev-commit 仅显示 SHA-1 的前几个字符，而非所有的 40 个字符。
--relative-date 使用较短的相对时间显示（比如，“2 weeks ago”）。
--graph 显示 ASCII 图形表示的分支合并历史。
--pretty 使用其他格式显示历史提交信息。可用的选项包括 oneline，short，full，fuller 和 format（后跟指定格式）。

查看单个文件修改信息：
方法1：
git log --pretty=oneline filename //查询文件修改历史
git show 31c3b70793f2474a7b33fc976ce8cb33be566d75  //某次提交的具体改动
方法2：
git log filename //显示filename提交历史
git log -p filename|commit-object 显示filename  //修改历史或者某次提交的文件变化
git show 31c3b70793f2474a7b33fc976ce8cb33be566d75 [filename] //显示某次提交的文件变化或者某次提交filenam的变化


### git diff
git diff  显示工作目录与索引区文件之间的差异
git diff --cached显示索引区与git仓库之间的差异
git diff HEAD   显示工作目录与git仓库之间的差异
   git diff HEAD^  比较上次提交
   git diff HEAD~2 比较上2次提交
--diff-filter=[ACDMRTUXB*]
   显示指定状态的文件：Added (A), Copied (C), Deleted (D), Modified (M), Renamed (R), changed (T), are Unmerged (U), are Unknown (X)
git difftool    使用图形工具显示文件之间的差异
git diff --stat 列出文件
git diff -- filename    只对比给定的文件
历史提交对比：
$ git diff commit       将所指定的某次提交与当前工作目录进行对比。
$ git diff commit1 commit2 将2次提交的内容进行对比
等价于
$ git diff commit1..commit2 如果省略任意一个commit，默认将使用HEAD代替
commit可以是简写的commit哈希值，也可是是HEAD。其中HEAD代表最后一次提交，HEAD^代表最后一次提交的父提交，HEAD~1>等价于HEAD^,HEAD~2为倒数第二次提交，以此类推。


### git branch
    git branch -b new_branch_name  切换到远程分支时，新建分支与远程分支建立关联
    git checkout -b local-branchname remote/origin/branchname 直接创建分支local-branchname 关联远程分支
    remote/origin/branchname
    git branch 显示本地所有分支
    git branch -a 显示本地和线上所有分支
    git branch origin :branch_name 删除远程分支branch_name
    git branch -d branchname 删除本地branchname分支
    git branch --set-upstream-to=origin/master  修改git push|pull 默认提交或拉取的远程分支
    git branch --unset-upstream master 取消对master分支的跟踪

### git checkout
    git checkout rebuild 切换到rebuild分支
    git checkout -b rebuild 从本地master分支新建rebuild分支

### git push
    git push origin master push到个人项目的master分支
    git push origin rebuild push到个人项目rebuild分支，初次push新建远程分支rebuild

### git pull
    git pull origin rebuild 合并远程仓库rebuild分支

### git status
git status --untracked-files=no 过滤掉未跟踪的文件
