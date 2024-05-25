home-profile

自己本地开发环境所需要的软件及其配置信息，方便拿到一台新电脑时可以快速搭建开发环境。

# 一定要先备份的文件

1. `~/.gitconfig` Git 的配置文件
2. `~/.ssh` SSH 的密钥目录
3. `~/.config` 一些软件的个人配置目录

# 初始化设置

- [MacOS系统级别的设置](./MacOSSystem)

# 软件级别的设置

## App Store 可以直接下载的软件

- [有道云笔记](https://note.youdao.com/note-download)
- 网易有道翻译
- WPS Office
- FastZip

## 下载 Chrome 浏览器

访问 `https://www.google.cn/chrome/index.html`

## 下载 Clash

[详见](./Clash)

## 下载 iterm2

[详见](./iTerm2)

## 设置终端代理

打开 iTerm2 然后执行以下命令，前提是已经有运行了 Clash

```bash
export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890
```

## 配置 git

[详见](./Git)

## 安装 oh-my-zsh

[详见](./oh-my-zsh)

## 安装 Homebrew

[详见](./Homebrew)

## 安装 wget

```bash
brew install wget
```

## 安装 tree

```bash
brew install tree
```

## 安装 telnet

```bash
brew install telnet
```

## 安装 [neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim)

[详见](./Neovim)

## 安装 [tldr](https://github.com/tldr-pages/tldr)

```bash
# 比 man 命令更加简洁的工具
brew install tldr

# 比如查看 tar 命令的使用文档
tldr tar
```

## 下载 IDEs

官网下载地址：`https://www.jetbrains.com/ides/`  

### [GoLand](https://www.jetbrains.com/go/download)

[详见](./GoLand)

### [PyCharm](https://www.jetbrains.com/pycharm/)

[详见](./PyCharm)

### [PhpStorm](https://www.jetbrains.com/phpstorm/)

[详见](./PhpStorm)

### [WebStorm](https://www.jetbrains.com/webstorm/)

[详见](./WebStorm)

## 下载 GitHub Desktop

下载地址：`https://desktop.github.com/`

## 下载 VS Code（Visual Studio Code）

[详见](./VS-Code)

## 下载 Docker Desktop

[详见](./Docker)

## 下载 postman

官网下载地址：`https://www.postman.com/downloads/`

## 安装 PHP8.2

[详见](./PHP82)

## 安装 [NVM](https://github.com/nvm-sh/nvm)

[详见](./NVM)

## 下载 [Charles](https://www.charlesproxy.com/latest-release/download.do)

[详见](./Charles)

## 下载 [Sensei](https://xclient.info/s/sensei.html)

Sensei 拥有带数据图表的仪表板，应用卸载，磁盘系统清理，启动项管理，电池健康管理（包含详细的电池报告），散热详细的硬件信息、图表及报告，温度监控模块（当前版本不支持）、GPU/显示器详细报告、性能优化、CPU监控、RAM内存监视、磁盘监视、风扇控制、磁盘基准、电池健康分析、启动速度优化、分区图管理等等功能。

性能仪表板，详细的电池报告程序，磁盘清洁器，热仪表板，主题支持，应用程序卸载程序，详细的硬件信息，温度监视器，GPU监视器，性能优化的，CPU监视器，定制设计，RAM监视器，详细的显示报告器，HDD / SSD SMART Reporter，100％本机代码，风扇控制，详细的GPU / eGPU报告器，磁盘运行状况分析器，磁盘基准测试，电池运行状况分析器，磁盘监视器，暗色模式。

