## shell variable 总结

### 赋值shell命令的输出给变量
举例：
var=`pwd`
或者
var=$(pwd)

### 从shell执行php脚本赋值给变量
举例：
data=$(/usr/local/bin/php -f index.php);
echo $data
