## 廖雪峰学习笔记

### map & reduce
例题：利用reduce()求积

    'use strict';
    function product(arr) {
        return arr.reduce(function(x,y){return x*y;});
    }

    // 测试:
    if (product([1, 2, 3, 4]) === 24 && product([0, 1, 2]) === 0 && product([99, 88, 77, 66]) === 44274384) {
        alert('测试通过!');
    }
    else {
        alert('测试失败!');
    }

例题：想办法把一个字符串13579先变成Array——[1, 3, 5, 7, 9]，再利用reduce()就可以写出一个把字符串转换为Number的函数。不要使用JavaScript内置的parseInt()函数，利用map和reduce操作实现一个string2int()函数：

    'use strict';
    function string2int(s) {
        if(s.length==1){
           return s.charCodeAt(0)-48;
        }
        return s.split('').reduce(function(x,y){
        return x*10+(y.charCodeAt(0)-48);
        });
    }

    // 测试:
    if (string2int('0') === 0 && string2int('12345') === 12345 && string2int('12300') === 12300) {
        if (string2int.toString().indexOf('parseInt') !== -1) {
            alert('请勿使用parseInt()!');
        } else if (string2int.toString().indexOf('Number') !== -1) {
            alert('请勿使用Number()!');
        } else {
            alert('测试通过!');
        }
    }
    else {
        alert('测试失败!');
    }

例题：请把用户输入的不规范的英文名字，变为首字母大写，其他小写的规范名字。输入：['adam', 'LISA', 'barT']，输出：['Adam', 'Lisa', 'Bart']。

    'use strict';
    function normalize(arr) {
        return arr.map(function(v){
           var temp = v.substr(1);
           return v.substr(0,1).toUpperCase()+temp.toLowerCase();
    });

    }
    // 测试:
    if (normalize(['adam', 'LISA', 'barT']).toString() === ['Adam', 'Lisa', 'Bart'].toString()) {
        alert('测试通过!');
    }
    else {
        alert('测试失败!');
    }
