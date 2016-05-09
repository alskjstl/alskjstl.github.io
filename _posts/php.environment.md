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

### 启动php自带服务器
官方说明：http://php.net/manual/zh/features.commandline.webserver.php
php -S localhost:8080 //配置域名为localhost,端口为8080
php -S localhost:8080 -t /home/webroot/www //另外配置服务根目录是/home/webroot/www
php -S 0.0.0.0:8080 -t /home/webroot/www 支持远程调用
例子：
php -S 0:8080 router.php
请求图片直接显示图片，请求HTML则显示“Welcome to PHP”
<?php
// router.php
if (preg_match('/\.(?:png|jpg|jpeg|gif)$/', $_SERVER["REQUEST_URI"]))
    return false;    // 直接返回请求的文件
else { 
    echo "<p>Welcome to PHP</p>";
}
