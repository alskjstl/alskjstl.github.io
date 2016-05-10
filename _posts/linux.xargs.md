## xargs 总结

-p 是交互式提醒
-I 替换字符串 
-J 整体替换字符串
### 批量在文件末尾添加txt
ls|xargs -n 1 -p -I % mv % %.txt
输入y 确认执行修改

### 批量移动文件到des_path
ls|xargs -n 1 -p -J % mv % des_path

### 比如删除符合条件的文件
find . -name ‘*.log’ -mtime +30| xargs rm -rf
相当于
find . -name ‘*.log’ -mtime +30 -exec rm -rf {} \;
