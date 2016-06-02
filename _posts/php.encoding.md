## php 编码总结

### mb_convert_encoding 转UTF-8
说明：第三个参数未指定时,mb_convert_encoding 会获取mb_internal_encoding的值
举例：
mb_convert_encoding($str,'UTF-8')
mb_convert_encoding($str,'UTF-8',mb_detect_order())
mb_convert_encoding($str,'UTF-8',mb_detect_encoding($str));

### iconv 转UTF-8
iconv(mb_detect_encoding($str,mb_detect_order(), true),'UTF-8',$str);

### 导出excel 编码转换
iconv('UTF-8','GBK',implode(",",$str).PHP_EOL);
