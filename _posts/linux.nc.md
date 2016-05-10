## nc 命令总结

官网：http://netcat.sourceforge.net/
介绍：
Netcat is a featured networking utility which reads and writes data across network connections, using the TCP/IP protocol.
It is designed to be a reliable "back-end" tool that can be used directly or easily driven by other programs and scripts. 
At the same time, it is a feature-rich network debugging and exploration tool, since it can create almost any kind of connection 
you would need and has several interesting built-in capabilities

### 扫描服务器TCP 端口
举例：nc -v -z -w2 192.168.0.1 1-10000
输出：
Connection to 192.168.0.1 22 port [tcp/ssh] succeeded!
Connection to 192.168.0.1 80 port [tcp/http] succeeded!
Connection to 192.168.0.1 111 port [tcp/sunrpc] succeeded!
Connection to 192.168.0.1 3306 port [tcp/mysql] succeeded!
Connection to 192.168.0.1 8001 port [tcp/vcom-tunnel] succeeded!
Connection to 192.168.0.1 8002 port [tcp/teradataordbms] succeeded!
Connection to 192.168.0.1 8003 port [tcp/mcreport] succeeded!
Connection to 192.168.0.1 8200 port [tcp/trivnet1] succeeded!

### 扫码服务器UDP 端口
举例：nc -u -z -w2 192.168.0.1 1-10000
输出：
Connection to 192.168.0.1 111 port [udp/sunrpc] succeeded!
Connection to 192.168.0.1 600 port [udp/ipcserver] succeeded!
Connection to 192.168.0.1 631 port [udp/ipp] succeeded!
Connection to 192.168.0.1 989 port [udp/ftps-data] succeeded!

### 扫码指定端口
举例：nc -nvv 192.168.0.1 80
输出：
Connection to 192.168.0.1 80 port [tcp/*] succeeded!

