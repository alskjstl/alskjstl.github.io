## 开发工具

### autojump
说明：目录自动跳转利器
1. 安装
    git clone git://github.com/joelthelion/autojump.git
    ./install.py
2. 配置
    [[ -s ~/.autojump/etc/profile.d/autojump.zsh ]] && . ~/.autojump/etc/profile.d/autojump.zsh
    source ~/.zshrc
3. 使用
    j --stat|-s //查看跳转数据库路径权重
    j --purge //删除不存在的实体
    j -i weight //增加当前路径的权重
    j -d weight //减少当前路径的权重
    j -a path //新增路径或目录
    j --complete //

### oh-my-zsh
1. 自动安装
首先确认是否安装zsh，自动安装
wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - |sh
2. 修改默认shell
chsh -s /bin/zsh //修改默认shell
git地址：https://github.com/robbyrussell/oh-my-zsh

### aria2
说明：电影下载利器
1. 安装
brew install aria2
2. 服务配置和启动aria2
touch /Users/yourname/Downloads/session.txt && aria2c --enable-rpc --rpc-listen-all --save-session=/Users/yourname/Downloads/session.txt --input-file=/Users/yourname/Downloads/session.txt -x16 -s16 -k1M --dir=/Users/yourname/Downloads
3. 创建Web下载页面
   仓库地址：https://github.com/ziahamza/webui-aria2
   打开index.html，打开之前确保aria2 服务是启动的

### iTerm 2
官网：https://www.iterm2.com/

### brew
官网：http://brew.sh/
Git仓库:https://github.com/Homebrew/brew

### Alfred 2
官网：https://www.alfredapp.com/

### lantern 蓝灯
官网：https://www.getlantern.org/
Git仓库：https://groups.google.com/forum/#!forum/lantern-users-zh
Aws下载地址:https://s3.amazonaws.com/lantern/lantern-installer-beta.dmg

### Sequel Pro
说明：开源免费的数据库GUI客户端
地址：http://www.sequelpro.com/
