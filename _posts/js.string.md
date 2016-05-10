## js 字符串总结

### 字符串表示
使用单引号和双引号表示字符串
字符串内出现单引号和双引号时用转义字符反斜线(\)转义，例如：'I\'m \"teacher\"' 表示“I'm teacher”

### 字符串连接符"+"
var str1 = 'hello';
var str2 = 'world';
str1 + str2;

### 多行字符表示
\n 分隔显示
ES6 标准新增反引号表示多行字符串
alert(`多行
字符串
测试`);

### 获取字符串长度和索引访问
字符串长度:length，举例：
var s = 'hello world!';
s.length; //12

s[0];//h
s[1];//e
s[12];//undefined

注意：字符串是不可变的，对字符串某个索引赋值不会有任何错误，但也不会有任何效果

JS 常用方法不会改变原有字符串内容，而是返回新的字符串
### toUpperCase 把字符串全部变为大写
var s = 'Hello';
var upper = s.toUpperCase();
upper; // 返回'HELLO'

### toLowerCase 把一个字符串全部变味小写
var s = 'Hello';
var lower = s.toLowerCase(); // 返回'hello'并赋值给变量lower
lower; // 'hello'

### indexOf 搜索指定字符串出现的位置
var s = 'hello, world';
s.indexOf('world'); // 返回7
s.indexOf('World'); // 没有找到指定的子串，返回-1

### substring 返回指定索引区间的字串
var s = 'hello, world'
s.substring(0, 5); // 从索引0开始到5（不包括5），返回'hello'
s.substring(7); // 从索引7开始到结束，返回'world'
