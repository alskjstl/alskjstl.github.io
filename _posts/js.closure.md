## js 闭包总结

### 定义
闭包是指能够访问自由变量的函数。换句话说，定义在闭包中的函数可以“记忆”它被创建时候的环境。
### 特性
闭包是一种特殊的对象。它由两部分构成：函数，以及创建该函数的环境。环境由闭包创建时在作用域中的任何局部变量组成
### 使用场景
在 Web 中,大部分我们所写的 Web JavaScript 代码都是事件驱动的 —- 定义某种行为，然后将其添加到用户触发的事件之上（比如点击或者按键）。闭包通常添加为回调：响应事件而执行的函数。

### 闭包举例
function makeAdder(x) {
  return function(y) {
    return x + y;
  };
}

var add5 = makeAdder(5);
var add10 = makeAdder(10);

console.log(add5(2));  // 7
console.log(add10(2)); // 12

makeAdder为闭包，返回局部匿名方法
