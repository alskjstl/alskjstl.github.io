## zsh 学习总结

### Mac 安装zsh
brew install zsh

### 设置zsh为默认shell
1. 在/etc/shells 文件末尾添加/bin/zsh
2. 执行 chsh -s /usr/local/bin/zsh
3. source ~/.zshrc

### 自动安装oh-my-zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

### 修改zsh主题
修改 ~/.zshrc 文件中的ZSH_THEME 变量
例如：ZSH_THEME="robbyrussell"
