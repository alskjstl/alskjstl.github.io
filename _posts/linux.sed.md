## linux sed 命令总结

### 全局替换文本
Mac 语法：sed -i '.back' 's/188/189/g' a.txt
Linux 语法：sed -i 's/182/189/g' a.txt
区别解释：http://stackoverflow.com/questions/4247068/sed-command-with-i-option-failing-on-mac-but-works-on-linux

### 指定行新增内容
sed '2a 666' a.txt //在第二行之后新增内容666
sed '2,4a 666' a.txt //在第二行和第四行之后新增666

### Sed Tutorial
http://www.tutorialspoint.com/sed/sed_loops.htm
https://linuxconfig.org/learning-linux-commands-sed
http://www.cnblogs.com/ggjucheng/archive/2013/01/13/2856901.html
