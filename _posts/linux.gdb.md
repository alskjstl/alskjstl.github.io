## linux gdb 总结

### 打开coredump
ulimit -c 10000

### 配置路径
echo "/tmp/coredump/core-%e-%h-%t-%s-%p" > /proc/sys/kernel/core_pattern

### core文件开启带pid
echo "1" > /proc/sys/kernel/core_uses_pid

### 分析core日志
gdb -c core-zsh-300-113000
