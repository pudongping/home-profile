# [Neovim](https://github.com/neovim/neovim)

## 使用 Neovim

本目录下有两套 neovim 的配置，均可直接使用。区别如下：

- [nvim-config](./nvim-config) ：使用 [folke/lazy.nvim](https://github.com/folke/lazy.nvim) 作为插件管理器，找各种插件进行配置。
- [oh-my-lazy-vim](./oh-my-lazy-vim)：使用 [LazyVim](https://www.lazyvim.org/installation) 作为配置模版，在此基础之上添加的各种插件。

## 所需安装的软件

### 使用 homebrew 安装 neovim

```bash
# https://formulae.brew.sh/formula/neovim
brew install neovim
```

查看 neovim 版本号

```bash
nvim --version
```

### 安装 git

```bash
brew install git
```

### 安装 fzf

```bash
brew install fzf
```

### 安装 rg

```bash
brew install ripgrep
```

### 安装 iTerm2

```bash
brew install iterm2
```

### 安装字体 [nerd-fonts](https://github.com/ryanoasis/nerd-fonts#font-installation)

> 方便显示一些小图标。

```bash
brew tap homebrew/cask-fonts
brew install font-hack-nerd-font
```

查看安装后的字体

```bash
cd ~/Library/Fonts && ll
```

对 iTerm2 设置字体。需要勾选 **Use a different font for non-ASCII text** 来启动第二字体。然后在 **Non-ASCII Font** 下选择 `Hack Nerd Font Mono` 字体。
可以参考下图所示。

![](./imgs/iterm2-setting-front.png)

## 如何使用配置？

建议通过软连接的方式使用配置信息，自己的个人配置还可以通过版本管理软件 git 进行管理。

比如，如果需要使用 `nvim-config` 目录下的配置信息时：

```bash
# 直接通过建立软连接的方式使用（要使用绝对路径的方式）
# eg：
ln -s /Users/pudongping/glory/codes/code/home-profile/Neovim/nvim-config/nvim $HOME/.config/nvim
# 或者使用如下方式，效果一样
ln -s ~/glory/codes/code/home-profile/Neovim/nvim-config/nvim/ ~/.config/nvim

# 查看建立关系
ls -al $HOME/.config | grep nvim

# 如果需要删除软连接的话（不直接使用 rm -rf $HOME/.config/nvim 命令，是担心误删）
cd $HOME/.config && rm -rf nvim
```

## 小技巧

- 光标位于某个硬盘路径，按键盘 `gf` 两个字母时，可以直接使用 nvim 直接打开。然后可以通过 `Ctrl+o` 回退回来。光标对着网址路径，按键盘 `gx` 两个字母时，可以直接使用浏览器打开。可以通过 `Ctrl+i` 反向跳转。

## 常用指令

| 指令                                                                  | 含义 | 模式  |
|---------------------------------------------------------------------| --- |-----|
| :Explore                                                            | 列出当前目录下所有的文件 | n   |
| :e filename                                                         | 以 buffer 的形式打开新文件 | n |
| Ctrl+w 然后 h、j、k、l                                                   | 在分屏下上下左右切换屏幕 | n |


## 特定某些插件

### 和 golang 相关的效率神器

- [olexsmir/gopher.nvim](https://github.com/olexsmir/gopher.nvim) 给结构体添加指定标签名、自动为当前文件中的函数生成测试代码等
- [ray-x/go.nvim](https://github.com/ray-x/go.nvim) 使用 go 时的插件

### markdown

- [iamcco/markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim) markdown 插件