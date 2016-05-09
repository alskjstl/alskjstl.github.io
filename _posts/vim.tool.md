---
layout: page
title:	
category: blog
description: 
---
# Preface

前导符(leader):
  默认是\

gvim 查看帮助：F1
1、重构项目树：\R
2、CtrlP 切换目录查找文件，进入vim，cd path，Ctrlp建立文件索引完成后，输入关键字，利用Ctrl+j/k 选择目标文件
3、Ctrlp 文件打开方式
    Command+t 在新的tab中打开
    Command+v 在竖直视图中打开
    Command+h 在水平视图中打开
    Command+o 选择应用程序打开文件

vim 插件介绍：
http://zuyunfei.com/categories/Vim/


# vim 快捷键设置说明

1. <C-*> 表示Ctrl+*，*表示某个字符

2. <D-*> 表示Command+*，*表示某个字符

> mac 下的command 主要用于系统级控制：复制(cmd-c)、粘贴(cmd-v)、切换程序(cmd-tab) ....command 一般被系统占用，一般不可以自定义功能。 
> mac 下的ctrl 一般用于程序级的，程序可以自定义其功能。同一个ctrl 快捷键，在不同的程序下，作用可以不一样。
> windows 下ctrl 充当两个职责，快捷键容易冲突。mac 则使用了两个键区分

### vim 使用技巧总结
1. 高亮整个单词
    gd
2. visual mod 选中文字大写
    U
3. 选中单词并高亮显示
    shift+*/#
4. 调到单词尾部 
    e
5. 大写
    gU{motion},例如：iw是单词，gUiw是大写单词
6. 小写
    gu{motion}
7. r/R
   r是替换当前字符，R是一直替换

### 通过vim编辑shell命令 
进入 ctrl+e+x
退出 shift z+z

### 设定shell 默认编辑器
export EDITOR=vim

### 解决vim中单行字符过长显示问题 
set wrap

### vim 删除定界符元素 
di<delimeter> 删除元素不删除定界符
ci<delimeter> 更改定界符包含的元素
ai<delimeter> 删除元素和定界符

### vim - 通过管道读取文件
cat <(curl https://raw.githubusercontent.com/hilojack/php-lib/master/yield/stacked-coroutine.php)  | vim -
