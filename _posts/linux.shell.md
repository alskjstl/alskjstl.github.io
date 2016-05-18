## shell 环境相关

### 查看当前shell
echo $SHELL

### 另类的方式查找当前shell
echo $0

### 查看系统支持的shell类型
cat /etc/shells

### 查看环境信息
env

### 查看当前shell的pid
echo $$

### 0 1 2
0 标准输入
1 标准输出
2 标准错误

### 输入输出重定向
说明：/dev/null 是linux的特殊文件，所有重定向到该文件的数据被扔弃
举例：
./abc.sh >/dev/null 2>&1 脚本输出被扔弃，标准错误重定向到标准输出，间接扔弃,顺序不能反
