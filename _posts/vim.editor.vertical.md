启动方法
在 Vim 命令模式下，移动游标定位于某一个位置，键入 ctrl-v后状态栏上出现 VISUAL BLOCK 字样，即进入纵向编辑模式。移动游标以按需选择待编辑的区域。注意：在 Windows 版本的 Vim 中，键组合 ctrl-v通常被映射为文本粘贴，所以 Window 版的 Vim 的纵向编辑模式由 ctrl-q启动。当然灵活的 Vim 也可以由用户自行定义组合键。
回页首
示例 1：纵向编辑在批量修改代码的应用演示
将数列：
 10.1.5.214 
 10.1.5.212 
 10.1.5.210
编辑成序列：
 ping -c 4 10.5.5.214 >> result0 
 ping -c 4 10.5.5.212 >> result0 
 ping -c 4 10.5.5.210 >> result0
这是一个将 IP 数列修改成可执行的 ping 命令序列的过程。
第一步：修改
将 IP 数列中第二段所有数字“1” 修改为“5”：
将游标定位第一个行 IP 地址第二段的“1”
ctrl-v 进入纵向编辑模式
G 移动游标到最后一行，可视块覆盖所要修改的列
r 进入修改模式
5 输入数字“5”
ESC 退出纵向编辑模式，同时所有被选中的数字都被改成了“5”，并回到命令模式
结果如下：
 10.5.5.214 
 10.5.5.212 
 10.5.5.210
第二步：前添加
在所有行之前添加“ping – c 4 ”：
将游标定位到第一行第一列
ctrl-v 进入纵向编辑模式
G 移动游标到最后一行第一列，可视块覆盖了第一列
I 进入行首插入模式
ping -c 4 输入所要求字符“ping – c 4 ”
ESC 退出纵向编辑模式的同时所有选中的字符前都添加了“ping – c 4 ”，回到命令模式
结果如下：
 ping -c 4 10.5.5.214 
 ping -c 4 10.5.5.212 
 ping -c 4 10.5.5.210
第三步：后添加
在所有行之后添加“>> result0”：
将游标定位到第一行最后一列
ctrl-v 进入纵向编辑模式
G 移动游标到最后一行最后一列，VISUAL 　 BLOCK 　覆盖了最后一列
A 进入行尾插入模式
>> result	输入所要求字符“>> result0”
ESC 退出纵向编辑模式的同时所有选中的字符后都添加了“ >> result0”，回到命令模式
结果如下：
 ping -c 4 10.5.5.214 >> result0 
 ping -c 4 10.5.5.212 >> result0 
 ping -c 4 10.5.5.210 >> result0
以上三个步骤有一个共同特点，就是都纵向为编辑方向。以上由三行代码为例的方法同样也可以适用于更多的行。
回页首
VisIncr 安装与操作
以上例子中所演示的对代码的纵向编辑，通过一般的代码重构功能或者结合正则表达式的查找替换也可以实现。然而 Vim 的纵向编辑模式还可以通过插件 VisIncr 的扩展，实现更丰富的功能，如纵向的生成数列。
从 Vim 的官方网站上搜索找到 VisIncr 插件的安装文件，并下载到 Vim 工作目录。执行以下命令即可安装该插件：
 vim visincr.vba.gz 
 :so % 
 :q
操作方法以示例 1 的代码为例：
使用 ctrl-v和移动光标选择最后都为数字“0”的一列
:键入冒号触发 Vim 进入命令行模式
:I以第一个数字为出发点，纵向生成增量数列，幅度为 1
ENTER	键入驾车键执行命令
结果如下：
 ping -c 4 10.5.5.214 >> result0 
 ping -c 4 10.5.5.212 >> result1 
 ping -c 4 10.5.5.210 >> result2
回页首
示例 2：VisIncr 在生成测试数据的应用演示
在应用程序开发过程中经常要生成一个简单有规律的测试数据。比如对一张表：
 testTable (”ipaddr” ,”filename”, ”owner”)
生成如下 SQL 语句：
 insert into test values("10.5.5.214”,”result0”,”testa”); 
 insert into test values(”10.5.5.212”,”result1”,”testb”); 
 insert into test values(”10.5.5.210”,”result2”,”testc”);
这个纵向有规律的语句序列，可以借助 VinIncr 应用纵向编辑功能来构造。
第一步：准备
打开一个新的 Vim 编辑页面，在命令模式下先输入一个“3”，然后键入“i”进入编辑模式。数字“3”代表本次输入的内容会重复输 3 遍。
在 VIM 中先输入第一行：
 insert into test values(”10.5.5.214”,”result0”,”testa”);
以回车结束行输入并新开一行，按 ESC 键退出编辑模式。
如果如下：
 insert into test values(”10.5.5.214”,”result0”,”testa”); 
 insert into test values(”10.5.5.214”,”result0”,”testa”); 
 insert into test values(”10.5.5.214”,”result0”,”testa”);
第二步：构造递减数列
对于 ipaddr 列，使用 ctrl-v和移动光标选择 IP 地址最后一段以 2 为幅度递减的部分：
: 键入冒号触发 Vim 进入命令行模式
:I -2 以第一个数字为出发点，纵向生成递减数列，幅度为 2
ENTER 键入驾车键执行命令
结果如下：
 insert into test values(”10.5.5.214”,”result0”,”testa”); 
 insert into test values(”10.5.5.212”,”result0”,”testa”); 
 insert into test values(”10.5.5.210”,”result0”,”testa”);
第三步：构造递增数列
对于 filename 列，使用上一节介绍的方式，结果如下：
 insert into test values(”10.5.5.214”,”result0”,”testa”); 
 insert into test values(”10.5.5.212”,”result1”,”testa”); 
 insert into test values(”10.5.5.210”,”result2”,”testa”);
第四步：构造字母递增数列
对于 owner 列，使用 ctrl-v和移动光标选择英文字母将要递增的部分。
: 键入冒号触发 Vim 进入命令行模式
:IA 以第一个字母为出发点，纵向生成按字母表排序的序列
ENTER 键入回车键执行命令
结果如下：
 insert into test values(”10.5.5.214”,”result0”,”testa”); 
 insert into test values(”10.5.5.212”,”result1”,”testb”); 
 insert into test values(”10.5.5.210”,”result2”,”testc”);
以上步骤即演示了借助 Vim 插件 VisIncr 对代码的纵向编辑，生成在纵向有逻辑规律的数列。
回页首
总结
Vim 不仅是一个编辑工具还是一套思考方法，Vim 有很多引导思维方向的技巧，让 Vim 在这个各种编辑器层出不穷的时候历久弥新。本文从纵向编辑为切入点，结合 VisIncr 演示了开发、测试过程中可以使用的实例。
