#php-fpm 学习

### 问题与答案
    q1: [pool www] 'user' directive is ignored when FPM is not running as root 
    a1:注释php-fpm.conf中的user和group 命令

### 开启
    php-fpm -D -c  /etc/php.ini

### 关闭
    pkill php-fpm
    killal php-fpm
