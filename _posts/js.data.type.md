## js 集合总结

### map
说明：是由key-value键值元素组成的有序集合，元素key不可重复，后添加相同key会覆盖原有值
举例：
二维数组初始化或不传初始值
1. 带参数初始化map
var map = new Map([['name','yang'],['age',20]]);
2. 不带参数初始化map
var map = new Map();

//set 添加新键值
map.set('gender','male');
//get 获取键名对应的值
map.get('name');
//has 判定键名是否存在于map
map.has('age');
//delete 删除键名对应的元素
map.delete('gender');

### set
说明：是由key元素组成的有序集合，元素key不可重复，后添加的元素会覆盖原有的key，与map不同点是set只有key，非key-value键值关系
举例：
二维数组初始化或不传初始值
1. 带参数初始化set
var set = new Set([1,2,3,4,5]);
2. 不带参数初始化set
var set = new Set();

//add 添加元素
set.add('name');
//delete 删除元素
set.delete('name');
