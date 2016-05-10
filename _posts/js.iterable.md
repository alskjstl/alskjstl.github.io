## js iterable总结

iterable是ES6新增数据类型，Array、Map和Set都属于iterable类型，统一可以用for ... of 语法访问

### for ... of 遍历iterable类型
举例：
var set = new Set([1,2,3]);
for (var x of set) {
  alert(x);
}

var map = new Map([['name','yang'],['age',20]]);
for (var x of map) {
  alert(x[0] + '=' + x[1]);
}


### forEach 遍历iterable类型
forEach 接收一个函数，每次迭代就自动回调该函数
举例：
1. 以array为例
var arr = [1,2,3];
arr.forEach(function(element,index,array){
    alert(element);
})

2. 以set为例
Set与Array类似，但Set没有索引，因此回调函数的前两个参数都是元素本身：

var s = new Set(['A', 'B', 'C']);
s.forEach(function (element, sameElement, set) {
    alert(element);
});

3. 以map为例
Map的回调函数参数依次为value、key和map本身：

var m = new Map([[1, 'x'], [2, 'y'], [3, 'z']]);
m.forEach(function (value, key, map) {
    alert(value);
});

注意:forEach()方法是ES5.1标准引入的，你需要测试浏览器是否支持
forEach 回调函数第二和第三个参数可以省略
