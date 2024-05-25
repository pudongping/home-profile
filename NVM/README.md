[NVM](https://github.com/nvm-sh/nvm) 是 Node 的多版本管理工具。

安装命令

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
```

添加进配置文件中

```bash
vim ~/.zshrc

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
```

安装 node 16.2.0 版本

```bash
nvm install 16.2.0

nvm use 16.2.0

# 查看 node 版本
node -v
# v16.2.0

# 查看 npm 版本
npm -v
# 7.13.0
```