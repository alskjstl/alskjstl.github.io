## shell array

### 定义字典
举例：
animals=( ["moo"]="cow" ["woof"]="dog")
for sound in "${!animals[@]}"; do echo "$sound - ${animals["$sound"]}"; done

### array 遍历
举例：
arr=(aaa bbb ccc)
//值遍历
for value in ${arr[@]}
do
    echo $value
done

//索引遍历
for index in ${!arr[@]}
do
    echo $index
    echo ${arr[$index]}
done
