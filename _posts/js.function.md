## js 函数总结

### 函数定义
举例：
function abs(x) {
    if (x >= 0) {
        return x;
    } else {
        return -x;
    }
}

上述abs()函数的定义如下：
    function指出这是一个函数定义；
    abs是函数的名称；
    (x)括号内列出函数的参数，多个参数以,分隔；
    { ... }之间的代码是函数体，可以包含若干语句，甚至可以没有任何语句。

注意：
1. 函数实际是函数对象，上例中abs函数名可以视为指向函数对象的变量
2. 函数没有return语句，函数执行完毕也有返回，返回结果是undefined

### 匿名函数
举例：
var abs = function (x) {
    if (x >= 0) {
        return x;
    } else {
        return -x;
    }
};

function (x) { ... }是一个匿名函数,没有函数名，匿名函数赋值给变量abs，通过abs调用函数

### 函数调用
举例：
abs(100); //输出100
abs(-10);//输出10

abs(-100,'a','b');//参数个数大于函数定义的参数个数，js不会报错，多余参数不做处理

### arguments
说明：
仅在函数内部生效，永远指向当前函数传入的所有参数，arguments跟Array类似，但不是Array
function foo(x) {
    alert(x); // 100
    for (var i=0; i<arguments.length; i++) {
        alert(arguments[i]); // 100, 200, 300
    }
}

foo(100,200,300);

### rest
说明：rest是ES6新定义的，只能写在函数定义最后一个参数，用...标示，传入函数
举例：
function sum(...rest) {
    if(rest.length > 0){
        var sum = 0;
        for(var i=0;i<rest.length;i++){
            sum += rest[i];
        }
        console.log(sum);
    }
}

sum(10,20,30);

### return 风险
注意：js会在行末自动添加分号机制

举例：
1. function food(){
    return {name:'apple'};
}

2. function food(){
    return
        {name:'apple'};
}

举例1中的方法没有问题，举例2中的方法返回undefined，原因是js在return后自动添加了分号
举例2已变成了如下：
function food(){
    return;
        {name:'apple'};
}


### 方法
在对象中定义函数称为对象的方法
var person = {
    name:"zhangsan",
    age:20,
    getAge:function(){
        return this.age;
    }
};

getAge 是person 对象的方法

### this
说明：this 对象任何时候指向当前对象

js this大坑举例：
function getAge(){
   return this.age;
}

var person = {
    name:"zhangsan",
    age:20,
    getAge:getAge
};

调用方式1：person.getAge();//20
调用方式2：getAget();//Uncaught ReferenceError: getAget is not defined
方式1中this对象指向当前调用对象person
方式2中this指向对象根据情况而定，非strict模式下指向window对象，strict模式下指向undefined

### apply

### 装饰器

