## awk 总结

### NF和$NF 的区别
NF表示域(field )的个数，
$NF表示域(field)的最后一列
举例：路径/home/rd/www
echo $PWD|awk -F/ '{print NF}'  //输出4,表示域的个数
echo $PWD|awk -F/ '{print $NF}' //输出为www,输出域的最后一列

### awk 正则使用过滤文件
git status -uno|awk '/\.php$/{print $NF}' //输出git中变更的文件列表
