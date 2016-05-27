## linux shell 总结

(hilojack shell 表达式)[https://github.com/hilojack/hilojack.github.io/blob/master/_posts/shell-expression.md]

### if 条件判定
1. -a 条件与
2. -o 条件或
3. 赋值 = 两边留空
4. test 表达式 等价于 [ 表达式 ]
5. -z 判定字符串是否为空串，表达式没有()，则表达式为并列关系
6. -d 判定变量是否为目录
7. ! 逻辑非，与表达式之间一定要有空格
8. 整数操作符：-ge、-gt、le、lt，依次是大于等于，大于，小于等于，小于
9. [ $var ] 等价于 [ -n $var ]，判定变量var是否为空
10. : 表示空命令不做任何事情，Exit Status 永远为真，执行/bin/true 和 /bin/false 表示真或者假


### expr 表达式
加法：
echo `expr 2 + 1`

减法：
echo `expr 2 - 1`

乘法：
echo `expr 2 \* 1`

除法：
echo `expr 2 / 1`

幂运算：
echo $[2 ** 3]

### expr 等价表达式
`expr 2 \* 1` <=> $((2 * 1)) <=> $[2 + 1]

### 变量与字符串连接
    '' 或者""
    举例：${var}'string' 或者 ${var}"string"


### function 介绍
    方法定义：
    function funcname(){
    
    }

    返回值：
    return 仅返回结束状态

    获得变量：
    可在方法体内定义变量，在外部使用

### array 数组
    新建数组：
    arr=(item1 item2 item3),用括号括起来，元素之间用空格分隔

    遍历数组：
    arr=(item1 item2 item3)
    for i in ${arr[@]}
    do
        echo ${i}
    done

### if 判断语法
if 条件的Exit Status=0 表示真，则执行then后面的命令
Exit Statu非0 表示假，则执行elif、else 或 fi 后面的子命令
格式1:    
    if 条件 ;then
    fi
格式2：
    if 条件 ;then
    elif 条件 ;then
    else
    fi

### read 输入信息
read 变量名,接受各类字符，多个空格会替换为单个空格

### && 、|| 与 -a、-o 作用和区别
&& 相当于 if ... ;then ...
|| 相当于if not ... ;then ...
-a 是条件与
-o 是条件或
&& 和 || 用在两个命令之间
-a 和 -o 用在两个条件之间

test "$VAR" -gt 1 && test "$VAR" -lt 3
test "$VAR" -gt 1 -a "$VAR" -lt 3 等于与 

### $$ $@ $* $# $? 说明
$$ 当前shell进程的pid
$@ 输入参数的列表,接收到的是数组
$* 输入参数的列表,接收到的是字符串
$# 输入参数的个数
$? 命令执行的状态码

### 获取path的目录
举例：
path='/home/webroot/index.php'
echo $(dirname ${path})

### 执行shell变量构成的语句
cmd='ls'
sh -c "$cmd"
