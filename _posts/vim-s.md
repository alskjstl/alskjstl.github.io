---
layout: page
title:	
category: blog
description: 
---
# Preface
本文会系统描述vim 的语法，如果想了解具体选项和操作技巧，参考我的vim 笔记

主要参考 [book]: 
http://learnvimscriptthehardway.stevelosh.com/ (中文)
http://learnvimscriptthehardway.onefloweroneworld.com/ (英文)

# Todo
vim-ide: https://github.com/humiaozuzu/dot-vimrc

# Variable
See :help internal-variables

It lists the following types:

    (nothing) In a function: local to a function; otherwise: global 
    buffer-variable    b:     Local to the current buffer.                          
    window-variable    w:     Local to the current window.                          
    tabpage-variable   t:     Local to the current tab page.                        
    global-variable    g:     Global.                                               
    local-variable     l:     Local to a function.                                  
    script-variable    s:     Local to a :source'ed Vim script.                     
    function-argument  a:     Function argument (only inside a function).           
    vim-variable       v:     Global, predefined by Vim.

	let w='abc'
	echo w

## ENV

	:echo $VIMRUNTIME

## get value

	echo &shell

## String

	echo '\\' 
		\\
	echo 'Hilojack''s blog'
		Hilojack's blog
	echo "\\" 
		\
	echo "\n" 
		0a

# echo

	"string
	echo "string"

	"message
	echom "echomsg"
	"view msg
	:mes

# debug
copy commands:

	"+y

execute commands:

	@+

# init

## 初始化配置.vimrc
可在这个文件放一些初始化的命令

	:autocmd FileType text setlocal textwidth=78 
	
超过78个字符时自动断行（仅对普通文本）“autocmd FileType text” 它所定义的是当文件类型被设置为text时就自动执行它后面的命令

# set options 

	:set {option}
	:se no{option}
	:set {option}& "在后面加&时会重置option的默认值
	:se {option}? "show option
	:se "show all option
	:se viminfo-=s100

# 脚本文件

## 查看脚本

	:script	查看加载的脚本
	:scriptnames 查看加载的脚本
	:version 查看编译项、配置文件

### 全局plugin

	~/.vim/plugin/
	$VIMRUNTIME/macros

### 文件类型插件filetype plugin

	$VIMRUNTIME/ftplugin

## 文件类型(plugintype detection)
开启插件检测：

	"enable file type detection
	:filetype on

	"enable loading the plugin files for specific file types with:
	:filetype plugin on

	"enable loading the indent file for specific file types with:
	:filetype plugin indent on 

# autocmd
Add {cmd} to the list of commands that vim will execute automatically on {event} for a file matching {pat}
Vim always adds cmd after existing autocommands, so that the autocommands execute in order.

	:au[tocmd] [group] {event} {pat} [nested] {cmd}

Example:

	"The command will execute once .vimrc is edited
	:autocmd! bufwritepost .vimrc source ~/.vimrc 
	:autocmd FileType c,cpp  map <buffer> <leader><space> :w<cr>:make<cr>

*specical characters* in the `:autocmd` arguments are *not expanded*. The only excetion is `sfile`:

	:au BufNewFile,BufRead *.html so <sfile>:h/html.vim

# Function

## Define

	function! Funcname()
		...
	endfunction

> funcName must start with capital or contain colon:
> It cannot be combined to one line.

For example:

	function! Hello(name)
		echo 'Hello, '.a:name.'!'
		return "succ"
	endfunction

## call function
	call Hello('hilojack')

	if Hello('Who')
		echo 'yes'
	endif

# loop/if

## if

	if has("win32")
		return "windows"
	else
		return "linux"
	endif

# excute

	"对搜索的设置
	map ft :call Search_Word()<CR>:copen<CR>
	function Search_Word()
		let w = expand("<cword>") " 在当前光标位置抓词
		execute "vimgrep " . w . " *"
	endfunction

# Reference
- [learnvim hardway][book]
- [易水博客][easwy]

[book]: http://learnvimscriptthehardway.stevelosh.com/
[easwy]: http://easwy.com/blog/archives/advanced-vim-skills-introduce-vimrc/
