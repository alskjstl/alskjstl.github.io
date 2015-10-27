
http://www.cnblogs.com/gcb999/p/3776250.html

进制表现形式：
十进制：无前缀
二进制：以0b为前缀
八进制：以0o为前缀
十六进制：以0x为前缀

整型：
有符号：Int Int8 Int16 Int32 Int64
无符号：UInt UInt8 UInt16 Int32 Int 64 

位运算符：
按位与（&）
let int1:UInt8 = 0b00001111
let int2:UInt8 = 0b00110011
let int3:UInt8 = int1 & int2




自定义类型：
typealias 别名 = 系统类型
eg：typealias Id = UInt8

防整型溢出运算符：&
eg：
var underflow = UInt8.min
var overstep = underflow &- 1
print(overstep) //255

防除0溢出运算符:&
测试是有问题的
let x = 1
let y = x &/ 1;
print(y)


运算符重载？
结合性：associativity，取值有left，right和none
优先级：precedence

比较运算符：===、!==、==、!=
=== 恒等运算符，值和类型都相同时为true，用于类与结构体比较
== 值相同时为true，用于普通类型的比较

