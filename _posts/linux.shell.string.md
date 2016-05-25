## shell string总结

### 字符串连接
举例：逗号连接数组元素
arr=(aaa bbb ccc)
field=$(printf ",%s" "${arr[@]}")
field=${field:1}
echo $field
