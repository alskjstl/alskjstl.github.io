# nginx error 记录并分析


### start 启动问题
1. using inherited sockets

    问题描述：2015/10/26 11:29:56 [notice] 3853#0: using inherited sockets from "/home/yuejidaren/"

    解决办法：nginx 启动时指定-c 配置文件解决，原因不详

