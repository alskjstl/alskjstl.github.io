## mysql 数据类型总结

### integer type
[整型数据类型](http://dev.mysql.com/doc/refman/5.7/en/integer-types.html)

|Type|Storage|Minimum Value|Maximum Value|
|:---|:---|:---|:---|
||Bytes|Signed/Unsigned|Signed/Unsigned|
|TINYINT|1|-128|127|
|||0|255|
|SMALLINT|2|-32768|32767|
|||0|65535|
|MEDIUMINT|3|-8388608|8388607|
|||0|16777215|
|INT|4|-2147483648|2147483647|
|||0|4294967295|
|BIGINT|8|-9223372036854775808|9223372036854775807|
|||0|18446744073709551615|

### string type
[字符串数据类型](http://dev.mysql.com/doc/refman/5.7/en/string-type-overview.html)

|Type|Maxinum Lenght|
|:---|:---|
|TINYTEXT|256 Bytes|
|TEXT|65535 Bytes = 64KB|
|MEDIUMTEXT|16,777,215 Bytes = 16M|
|LONGTEXT|4,294,967,295 Bytes = 4GB|
