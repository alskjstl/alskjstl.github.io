# Markdown 语法学习
[认识与入门Markdown](http://sspai.com/25137)

[MarkdownPad 工具](http://www.markdownpad.com/)

[Markdown 作者](http://daringfireball.net/projects/markdown/syntax)

[Markdown 中文语法](http://wowubuntu.com/markdown/)

[Markdown 简明语法](http://ibruce.info/2013/11/26/markdown/)


# 标题说明  <!--Atx方式-->
\# 一级标题

\## 二级标题

\### 三级标题

\#### 四级标题

\##### 五级标题

\###### 六级标题

# 标题 <!--Setext方式-->

\===  大标题

\---  小标题


# 列表
### 有序列表
有序列表则直接在文字前加 1. 2. 3. 符号要和文字之间加上一个字符的空格

eg:

1. content

### 无序列表
在文字前加上 - 或 * 即可变为黑色圆点无序列表, + 为白色圆点无序列表，可嵌套

eg:

- content

- 嵌套列表
 + 嵌套列表
 + 嵌套列表
  - 嵌套列表
   * 嵌套列表
- 嵌套列表


# 引用

语法 \> ，只需要在文本前加入 > 这种尖括号（大于号）即可
eg:

> 引用代码


# 图片与链接

### 链接语法

1. `[Title](http://25.io/mou/)`

2.  `\[][id]`
 
    `[id]: http://25.io/mou/ "Markdown editor on Mac OS X"`

3.   <http://www.github.com> <!--自动链接-->

### 图片语法

1. `\![]()`

2. `![][id]` <!--Reference 方式-->

   `[id]: http://resizesafari.com/favicon.ico "Title"`



# 粗体和斜体
> 用两个 * 包含一段文本就是粗体的语法，用一个 * 包含一段文本就是斜体的语法

eg:

\**粗体**

\*斜体 *


# 表格
|Table Name | Position  |
|-----------|:---------:|
|Margin     | Top Botton|
|Padding    | Width     |


# 代码框
用两个 \` 把中间的代码包裹起来，如 `code`



# 分割线
分割线只需另起一行，连续输入三个星号 *** 即可

eg： \***

# 段落
每行文字前加4个空格或者1个Tab

eg:

    var  str = "Hello Markdown"
    print("\(str)")

# 注释
语法格式：
    <!-- -->

# 转义
Markdown中的转义字符为\，转义的有：

\\ 反斜杠

\` 反引号

\* 星号

\_ 下划线

\{\} 大括号

\[\] 中括号

\(\) 小括号

\# 井号

\+ 加号

\- 减号

\. 英文句号

\! 感叹号

Mou 工具帮助提示：Command+R
