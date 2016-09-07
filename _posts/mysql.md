### mysql server install 
    sudo yum install mysql-server

### msyqldump database
    mysqldump -uroot -p****** -h10.10.10.10 user > user.sql

### mysql server start
    mysqld_safe

### mysql 外部执行sql
    mysql -uroot -proot -h10.10.10.10 user -e 'select uid from users' > uids.txt
    echo 'select uid from users'|mysql -uroot -proot -h10.10.10.10 user > uids.txt
