# mysql date 总结

### 日期时间格式：YYYY-MM-DD HH:MM:SS
    select now();
    select sysdate();
    [select] current_timestamp();

### 日期时间转时间戳
    方法：unix_timestamp
    可以是一个DATE字符串、一个DATETIME字符串、一个TIMESTAMP或以YYMMDD或YYYYMMDD格式的本地时间的一个数字
    select unix_timestamp();
    select unix_timestamp('2015-11-20 16:18:46');
### 时间戳转日期
    方法：from_unixtime
    举例：select from_unixtime('1477042087')  输出：2016-10-21 17:28:07.000000
