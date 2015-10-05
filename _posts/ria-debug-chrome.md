---
layout: page
title:	
category: blog
description: 
---
# Preface
chrome://chrome-urls/

# todo
chrome 调试指南1,2,3 
http://web.jobbole.com/82558/

# Network

## Dns Cache
chrome://net-internals/#dns

## spdy
chrome://net-internals/#spdy

# shortcuts
建议使用vimium

# Element
- Dom Breakpoint

# Source
- Cmd+P 打开source file

## Breakpoint

### JS Breakpoint

	> 断点时，console 中的this 指向backbone 而不是window

### XHR Breakpoint
击+ 并输入 URL 包含的字符串即可监听该 URL 的 Ajax 请求，输入内容就相当于 URL 的过滤器。如果什么都不填，那么就监听所有 XHR 请求。一旦 XHR 调用触发时就会在 request.send() 的地方中断。

## snippets
关闭浏览器后不会消失. 浏览器刷新时也不会执行，除非手动执行

# debug

## js debug

### edit js
1. edit js in sources
2. cmd+s to saved
3. Refresh to clear edit

即使在断点时，你也可以编辑代码，按ctrl+S保存之后，你会看到区域2的背景由白色变为浅色，而断点会重新开始执行。

### Breakpoint
1. Press `Pretty print`, if the code is not human readable.
2. Add Breakpoint or Watch Expression
3. Refresh

## remote debug
打开：

	chrome://inspect

连接手机:
https://developer.chrome.com/devtools/docs/remote-debugging

# console
如果是自己的项目可以在发布的时候生成三份东西

1. 源代码,比如 app.js 
2. 压缩后的代码，比如 app.min.js
3. Sourcemap文件，比如app.js.map,这个文件保存了 `2->1` 映射

在Chrome等现代浏览器中你可以开启Sourcemap功能，这样你调试app.min.js的时候就像调试app.js一样方便

参考文章：
阮一峰的博文 http://www.ruanyifeng.com/blog/2013/01/javascript_source_map.html
英文	http://www.html5rocks.com/en/tutorials/developertools/sourcemaps/

# charlesproxy
前面说的那些方法大多只能处理压缩的文件，无法处理混淆后的文件。

刚出炉的一片文章：使用 charlesproxy 的 map local 功能，这个功能可以在当前环境中用你的本地文件替代你的线上文件。

http://blog.icodeu.com/?p=709

