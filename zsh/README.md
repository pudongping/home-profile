# ZSH

我直接使用的是 [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)

1. 首先你得先下载安装 [oh-my-zsh](https://ohmyz.sh/#install)
2. 然后使用以下命令查看默认的 `.zshrc` 配置文件

```bash
cat ~/.zshrc | grep -v '#' | grep -v '^$'
```

3. 最后按个人需求复制本目录下的 `zshrc` 文件中的配置信息去替换或者添加即可。

## 注意

我的配置文件中，有依赖于其他的工具。因此使用前，也得先安装依赖软件。

- [Homebrew](https://github.com/Homebrew/brew)：macOS 上的包管理器
- [nvm](https://github.com/nvm-sh/nvm)：Node.js 的版本管理器
- [gvm](https://github.com/moovweb/gvm)：Go 的版本管理器
- [pyenv](https://github.com/pyenv/pyenv)：Python 的版本管理器