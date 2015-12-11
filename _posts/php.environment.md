## php environment 相关

### php 命令安装
    sudo yum install php-devel  命令行工具

### sudo yum install libmemcached
    sudo yum install libmemcached

### php7 安装位置
    /usr/local/php7/  安装路径
    ln -s /usr/local/php7/bin/php /usr/local/bin/php7
    ln -s /usr/local/php7/bin/php-config /usr/local/bin/php7-config
    ln -s /usr/local/php7/bin/phpize /usr/local/bin/php7ize
    ln -s /usr/local/php7/bin/pear /usr/local/bin/pear7
    ln -s /usr/local/php7/bin/pecl /usr/local/bin/pecl7

### pecl install
pecl install ZendOpcache

### php-mysql 安装
yum -y install php-mysql  //you don't need to use "pecl install pdo_mysql"
