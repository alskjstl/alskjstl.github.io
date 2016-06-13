## linux 循环总结

### while 实现按秒调用
举例：每隔5秒执行一次命令
    while [ true ]
    do
        echo $(date '+%Y-%m-%d %H:%M:%S') >> time.log
        sleep 5
    done
