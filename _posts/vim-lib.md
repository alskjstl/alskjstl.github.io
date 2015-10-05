---
layout: page
title:	vim-lib
category: blog
description: 
---
# Preface

# platform

## detect

	function! OSX()
		return has('macunix')
	endfunction
	function! LINUX()
		return has('unix') && !has('macunix') && !has('win32unix')
	endfunction

