## nginx for Tengine 学习

[Nginx开发从入门到精通](http://tengine.taobao.org/book/index.html)

### nginx 进程模型
    一个master和多个work，由master管理work，多个work之间是平等的，master接到外部信号后
将请求转发work，每个work接到的请求数是均等的。
    nginx -s reload 命令行指令，nginx 接到reload 指令会加载新的配置,fork新的进程，并通
知旧的work不在接受请求，并完成未处理的请求后结束进程
