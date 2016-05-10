## grep 总结

### 两文件求差集
grep -f a.txt b.txt
从b.txt 中剔除a.txt 文件中的行

### -F 参数使用,正则表达式按照字符串处理
echo '^hello$'|grep '^hello$' //不匹配
echo '^hello$'|grep -F '^hello$' //匹配
