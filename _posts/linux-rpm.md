### rpm 查找某个命令属于哪个rpm
    rpm -qf path
    例如：rpm -qf `which lsb_release`

### yum 查找某个命令属于哪个安装包
    yum whatprovides path
    例如：yum whatprovides `which lsb_release`

### rpm 查询包中文件
    rpm -ql package-name
    例如：rpm -ql pcre-7.8-6.el6.x86_64

