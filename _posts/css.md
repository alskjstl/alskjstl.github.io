
盒子模型（Box Model）
四大组成：元素内容（element content）、内边距（padding）、边框（border） 和 外边距（margin）
详情：
依次是元素内容（content）、内边矩（padding-top、padding-right、padding- bottom、padding-left）、
边框（border-top、border-right、border-bottom、border- left）和外边距（marging-top、margin-right、
margin-bottom、margin-left）


1、内边距、边框和外边距都是可选的，默认是零
2、元素的背景应用于由内容和内边距、边框组成的区域
3、内边距的边缘是边框，边框以外是外边距，外边距默认是透明的，不会遮挡气候的任何元素，元素的margin 就是
其所在父元素的padding
4、css中，width和height指的是内容区域的宽高，增加内边距、边框和外边距不会影响内容区域的尺寸，但会增加
元素框的总尺寸。

参考：
http://my.oschina.net/sheila/blog/384806
http://www.w3school.com.cn/css/css_boxmodel.asp
