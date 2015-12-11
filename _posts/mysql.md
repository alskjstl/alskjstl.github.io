### mysql server install 
    sudo yum install mysql-server

### msyqldump database
    mysqldump -uroot -p****** -h10.10.10.167 taxi_mis_data > taxi_mis_data.sql

### mysql server start
    mysqld_safe
