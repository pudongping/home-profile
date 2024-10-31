home-profile

自己本地开发环境所需要的软件及其配置信息，方便拿到一台新电脑时可以快速搭建开发环境。

>我的 Mac 版本为 **MacBook Pro（16 英寸，2019 年）**   
系统版本为：**macOS Sonoma 14.5**

如果你是想将一台 Mac 进行重装系统，那么则**十分建议**将以下文件或者目录，你需要先进行备份。

1. `~/.gitconfig` Git 的配置文件
2. `~/.ssh` SSH 的密钥目录
3. `~/.config` 一些软件的个人配置目录
4. `/etc/hosts` 本地 hosts 文件

有一些不太好下载的软件，我都放到网盘里面了，有需要的童鞋们可以自取。

链接: https://pan.baidu.com/s/1XH6faYvxb-WJ4tu4QZRBCQ?pwd=fdvw  
提取码: fdvw  

> 如果链接失效了，可以关注公众号「左诗右码」找到我的联系方式，然后私信找我要。

# 初始化设置

- [MacOS系统级别的设置](./MacOSSystem)

# 软件级别的设置

## App Store 可以直接下载的软件

- [有道云笔记](https://note.youdao.com/note-download)
- WPS Office
- FastZip
- XMind
- 网络调试助手

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

## 安装 oh-my-zsh

[详见](./oh-my-zsh)

## 安装 Homebrew

[详见](./Homebrew)

## 配置 git

[详见](./Git)

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

## 安装 [Easydict](https://github.com/tisfeng/Easydict)

```bash
# 一个简洁优雅的词典翻译 macOS App。开箱即用，支持离线 OCR 识别，支持有道词典，🍎 苹果系统词典，🍎 苹果系统翻译，OpenAI，Gemini，DeepL，Google，Bing，腾讯，百度，阿里，小牛，彩云和火山翻译。
# 瞬间就觉得「有道翻译」不香了 哈哈
brew install --cask easydict
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

这里需要说明一下，可以使用 [OrbStack](https://github.com/orbstack/orbstack) 来代替 Docker Desktop，
OrbStack 它不会像 Docker Desktop 一样占用大量的内存。它的打开速度和资源占用都比 Docker Desktop 要好很多。
貌似 OrbStack 也比较强大，还有其他的一些功能。**但是**我感觉用不上那么多，并且我觉得 Docker Desktop 也还行，就没有使用 OrbStack。

[详见](./Docker)

## 下载 postman

官网下载地址：`https://www.postman.com/downloads/`

## 安装 PHP8.2

[详见](./PHP82)

## 安装 [NVM](https://github.com/nvm-sh/nvm)

[详见](./NVM)

## 下载抓包工具 [Charles](https://www.charlesproxy.com/latest-release/download.do)

[详见](./Charles)

## 下载 [Sensei](https://xclient.info/s/sensei.html)

Sensei 拥有带数据图表的仪表板，应用卸载，磁盘系统清理，启动项管理，电池健康管理（包含详细的电池报告），散热详细的硬件信息、图表及报告，温度监控模块（当前版本不支持）、GPU/显示器详细报告、性能优化、CPU监控、RAM内存监视、磁盘监视、风扇控制、磁盘基准、电池健康分析、启动速度优化、分区图管理等等功能。

性能仪表板，详细的电池报告程序，磁盘清洁器，热仪表板，主题支持，应用程序卸载程序，详细的硬件信息，温度监视器，GPU监视器，性能优化的，CPU监视器，定制设计，RAM监视器，详细的显示报告器，HDD / SSD SMART Reporter，100％本机代码，风扇控制，详细的GPU / eGPU报告器，磁盘运行状况分析器，磁盘基准测试，电池运行状况分析器，磁盘监视器，暗色模式。

## 下载 [alienator88/Pearcleaner](https://github.com/alienator88/Pearcleaner)

一款免费的 Mac 软件清理工具。

```bash
brew install pearcleaner
```

## 下载 RESP.app

Redis 的一款 GUI （以前称为 RedisDesktopManager）
GitHub 地址为 `https://github.com/RedisInsight/RedisDesktopManager`  
官网地址为 `https://redis.io/insight/`

官方下载貌似还需要填写邮箱地址，我是直接通过 `https://foxirj.com/resp-mac.html` 进行下载的。

## 下载 Navicat Premium

下载地址：`https://xclient.info/s/navicat-premium.html`

Navicat Premium 结合了其他 Navicat 成员的功能。有了不同数据库类型的连接能力，Navicat Premium 支持在 MySQL、SQL Server、SQLite、Oracle 及 PostgreSQL 之间传输数据。包括存储过程，事件，触发器，函数，视图等。

可能会出现类似于“xxx.app已损坏,打不开.你应该将它移到废纸篓”的问题，解决方案是：

```bash
sudo xattr -d com.apple.quarantine /Applications/Navicat\ Premium.app
```

## 下载 BetterTouchTool

官网下载地址：`https://folivora.ai/`  
我的下载地址：`https://xclient.info/s/bettertouchtool.html`

[详见](./BetterTouchTool)

## 下载 Transmit

我的下载地址：`https://xclient.info/s/transmit.html`

Transmit 是一款功能齐全的 FTP 客户端。兼容 FTP，SFTP 和 TLS/SSL 协议，提供比 Finder 更加迅速的 iDisk 账户接入。与此同时，用户还可以通过 Transmit 在任意应用程序中无须下载即可实时编辑文档，方便简洁，一步到位。

## 下载 Tuxera

我的下载地址：`https://xclient.info/s/tuxera-ntfs.html`

官网下载地址：`https://ntfsformac.tuxera.com/` 提供了 14 天免费试用期。

Mac OS X 不支持对微软 Windows 格式的 NTFS卷的写入。Tuxera NTFS for Mac 是专门为 Mac用户提供的专业 NTFS 驱动软件, Tuxera NTFS for Mac 在提供最快速数据传输的同时，也使用智能缓存层来保护您的数据。

## 下载语雀

官方下载地址：`https://www.yuque.com/download`

## 下载 XtraFinder

超级好用的 Finder 增强工具，重要的是还**免费**！ 但是当前还不支持 Sonoma 14.5 希望后面会早点儿支持吧。

## 下载播放器

### IINA

颜值很高，功能强大，并且还**免费**。

Github 地址：`https://github.com/iina/iina`  
下载地址：`https://iina.io/`

### Movist Pro

一款CPU占用率低的高清多格式媒体播放器，但是是**收费**。

我的下载地址：`https://xclient.info/s/movist.html`

## ToDesk

官网下载地址：`https://www.todesk.com/`

## Motrix

免费开源的一款全能的下载工具，支持下载 HTTP、FTP、BT、磁力链接等资源

官网下载地址：`https://motrix.app/zh-CN/`

## LICEcap

LICEcap 是一个免费的可以捕获桌面的某个区域并将其直接保存为 .GIF 的软件。

官网下载地址：`https://www.cockos.com/licecap/`