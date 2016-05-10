## lsof 总结

### -P 抑制端口号转化为端口名称对应的网络文件
lsof -P|grep 8080

### -n 抑制网络序号转化为主机名
lsof -n|grep 8080

### 列出所有在监听的端口
function ports() { lsof -Pni4 | grep LISTEN }

### 查看某端口被占用
function port() { lsof -i tcp:$1 }
