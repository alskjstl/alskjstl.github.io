# map feature 功能介绍
[map自定义快捷键](http://www.jianshu.com/p/8ae25a680ed7)

### map的前缀
1. nore,表示非递归，递归的映射，如果键a被映射成了b，
   c又被映射成了a，如果映射是递归的，那么c就被映射成了b。

2. n,表示在普通模式下生效

3. v,表示在可视模式下生效

4. i,表示在插入模式下生效

5. c,表示在命令行模式下生效


### map (普通、可视、操作符模式的映射）
    :map \{leftkey\} \{rightkey\} 
    <!--含义为把{leftkey}映射为{rightkey},可进行映射扫描，也就是可递归映射-->
    eg:
    :map tn tabnew . <cr> <!--普通模式下输入tn 相当于 :tabnew . <cr>已打开当前目录-->
    
eg:

1. :nmap是:map的普通模式板，也就是说其绑定的键只作用于普通模式。
	例如：
	:nmap tn :tabnew .<cr> 和 :map td :tabnew .<cr> 在普通	模式下等效
2. :nnorempa和:nmap的关系和:noremap和:map的关系一样，只	是:nmap的非递归版

3. :nunmap和:nmap的关系和:unmap和:map的关系一样，取消:nmap的绑定。

4. :nmapclear是对应取消所有:map绑定的，慎用！

### unmap 取消键映射
    :unmap \{leftkey\}
    <!--取消在其作用模式中{leftkey}的绑定，比如之前tn被绑定为:tabnew .<cr>，此时此绑定消失-->

### noremap 非递归扫描
    :noremap td tn 
    <!--在其作用模式下，输入td就是输入tn，但是和:map不同的是，此时td再不会做进一步扫描解释-->

### mapclear 清除所有map绑定
    :mapclear <!--慎用-->

### map  键表说明
1. <k0> - <k9> 小键盘 0 到 9

2. <S-...> Shift＋键

3. <C-...> Control＋键

4. <D-...> Command + 键

5. <M-...> Alt＋键 或 meta＋键

6. <A-...> 同 <M-...>

7. <Esc> Escape 键

8. <Up> 光标上移键

9. <Space> 插入空格

10. <Tab> 插入Tab

11. <CR> 等于<Enter>

12. \<F1> - \<F12> F1-F12 功能键


###  map-modes 查看map快捷键作用范围
    :h map-modes <!--查看map-modes-->

### map 使用技巧
1. 实现插入模式删除当前行
    :imap <c-d> <esc>ddi

2. insert mode 转化单词为大写
    :imap <c-u> <esc>gUiwea
