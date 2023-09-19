# [Neovim](https://github.com/neovim/neovim)

- 插件管理器：[folke/lazy.nvim](https://github.com/folke/lazy.nvim)

## 使用 homebrew 安装 neovim

```bash
# https://formulae.brew.sh/formula/neovim
brew install neovim
```

## 安装 git

```bash
brew install git
```

## 安装 fzf

```bash
brew install fzf
```

## 安装 rg

```bash
brew install ripgrep
```

## 安装 iTerm2

```bash
brew install iterm2
```

## 安装字体 [nerd-fonts](https://github.com/ryanoasis/nerd-fonts#font-installation)

> 方便显示一些小图标。

```bash
brew tap homebrew/cask-fonts
brew install font-hack-nerd-font
```

查看安装后的字体

```bash
cd ~/Library/Fonts && ll
```

对 iTerm2 设置字体。需要勾选 **Use a different font for non-ASCII text** 然后在 **Non-ASCII Font** 下选择 `Hack Nerd Font Mono` 字体。
可以参考下图所示。

![](./imgs/iterm2-setting-front.png)

## 使用配置

```bash
# 直接通过建立软连接的方式使用（要使用绝对路径的方式）
# eg：
ln -s /Users/pudongping/glory/codes/code/home-profile/Neovim/.config/nvim $HOME/.config/nvim
# 或者使用如下方式，效果一样
ln -s ~/glory/codes/code/home-profile/Neovim/.config/nvim/ ~/.config/nvim

# 查看建立关系
ls -al $HOME/.config | grep nvim

# 如果需要删除软连接的话（不直接使用 rm -rf $HOME/.config/nvim 是担心误删）
cd $HOME/.config && rm -rf nvim
```

## 小技巧

- 选择某个硬盘路径，按键盘 `gf` 两个字母时，可以直接使用 nvim 直接打开。然后可以通过 `Ctrl+o` 回退回来。光标对着网址路径，按键盘 `gx` 两个字母时，可以直接使用浏览器打开。

## 用到的插件

- [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim) 皮肤插件

## 常用指令

```bash
:Explore 列出当前目录下所有的文件
:e filename 以 buffer 的形式打开新文件

```