## js 对象总结

Javascript 对象是一种无序的集合数据类型，由键值组成，键都是字符串，值可以为任意数据类型

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

### in 判定对象是否有某个属性
举例：'key' in obj

### hasOwnProperty
说明：判定属性是否属于对象，并非继承父类
举例：
obj.hasOwnProperty('key');//输出true
obj.hasOwnProperty('toString');//输出false，toString属性属于父类非对象自有属性

### 属性作为匿名方法
举例：
var makeCounter = function() {
    var privateCounter = 0;
    function changeBy(val) {
        privateCounter += val;
    }
    return {//这里是匿名对象
        increment: function() { //属性increment的值是匿名方法
            changeBy(1);
        },
        decrement: function() {
            changeBy(-1);
        },
        value: function() {
            return privateCounter;
        }
    }
};

### 打印对象
举例：
var obj = {'a':1,'b':2};
console.log(obj);

### js 数据类型介绍
|基本类型|对象类型|
|:---|---:|
|number|Function|
|string|Objectc|
|boolean|Array|
|symbol||
|null||
|undefined||

基本类型和对象类型的区别：值的可变性、值比较和传递

网友kinolee总结：
[在JavaScript中一切都是对象吗？](http://web.jobbole.com/82016/)
JavaScript的值可以分为两种类型：基本类型和对象类型，基本类型有：String, Number, Boolean, Symbol, undefined 和 null.，对象类型有Function, Object 和 Array.

1. 基本类型和对象类型的区别在于可变性和比较的方式以及程序中传值。
2. 基本类型是不可变的，换种说法就是它们的值不能改变。对比而言，对象类型是可变的，它们的值可以更新和改变。
3. 基本类型可以按值比较，当我们把一个基本类型赋值给另外一个基本类型，是复制了一个值。而对象这是通过引用进行比较，引用的是什么呢？引用的是底层对象。当我们赋值一个对象给另一个对象时。引用指针就创建了。在这个情况下，改变一个对象的值将更新另外一个对象的值。
当我们尝试在基本类型的值中调用方法时，JavaScript使用包装对象来临时控制基本类型，导致对象变为只读的并在垃圾回收后执行。
