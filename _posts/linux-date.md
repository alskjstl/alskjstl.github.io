### linux date 总结

### 获取当前时间
date "%Y-%m-%d %H:%M:%S"

### 指定时间按格式显示
date -d @1452756457 "+%Y-%m-%d %H:%M:%S"

### 指定日期转时间戳
date -d "2016-01-14" "+%s"

### 获取当前时间的时间戳
date "+%s"

### 获取昨天的日期
date -d yesterday '+%Y-%m-%d'
