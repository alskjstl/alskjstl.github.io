
## 常用命令 
http://www.cnblogs.com/gbyukg/p/3326825.html
http://www.ruanyifeng.com/blog/2011/09/curl.html

### 输出请求头 -i
curl -i www.z.cn

### 输出请求过程 -v 或者 --trace-ascii output.txt
curl -v www.z.cn
curl --trace-ascii output.txt www.z.cn

### 添加请求头 -H
curl -si -H 'Accept: application/vnd.avada+json; version=1' -H 'Content-Type: application/vnd.avadao+json; version=1; charset=UTF-8'
