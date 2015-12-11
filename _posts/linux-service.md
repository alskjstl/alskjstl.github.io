## linux service 学习

### service 管理服务
    cd /etc/init.d/
    chmod +x mysqld
    chkconfig --add mysqld
    chkconfig --level 3 mysqld on
    service mysqld start
    service mysqld stop
