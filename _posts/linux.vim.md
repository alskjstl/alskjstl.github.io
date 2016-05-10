## vim 总结

### tab缩进设置
set ts=4
set expandtab
set autoindent

### 引入外部vim定义
let vimrc_local_path = '~/.vimrc.local'
if filereadable(expand(vimrc_local_path))
    exec 'source ' . fnameescape(vimrc_local_path)
endif
