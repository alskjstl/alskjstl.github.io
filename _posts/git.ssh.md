# git ssh

### 从known_hosts中移除主机名
    问题：
    Host key verification failed.
    fatal: The remote end hung up unexpectedly
    解决：
    ssh-keygen -f /root/.ssh/known_hosts -R github.com
