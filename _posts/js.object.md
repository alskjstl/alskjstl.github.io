## js 对象总结

Javascript 是一种无序的集合数据类型，由键值组成，键都是字符串，值可以为任意数据类型

### 对象定义
说明：对象由大括号{}包括，元素由 ***:***格式组成，元素之间逗号分隔,最后一个元素后不跟逗号
举例：
var obj = {key:value,key2:value2}

### 属性访问
说明：点分格式和中括号格式
obj.key
obj['key']

### delete 删除元素
举例：delete obj.key

### in 判定对象是否有属性
举例：'key' in obj

### hasOwnProperty
说明：判定属性是否属于对象，并非继承父类
举例：
obj.hasOwnProperty('key');//输出true
obj.hasOwnProperty('toString');//输出false，toString属性属于父类非对象自有属性
