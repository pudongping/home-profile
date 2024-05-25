Mac 系统默认使用的是 zsh 作为 shell，但是默认的 bash 不够强大，这里我们使用 oh-my-zsh 来加强一下 zsh 的功能，个人认为 oh-my-zsh 确实非常好用，颜值也非常高。

官网地址：`https://ohmyz.sh/`

### 1. 安装 oh-my-zsh

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### 2. 更换 oh-my-zsh 主题

```bash
# 编辑配置信息
vim ~/.zshrc

# 修改了成了
ZSH_THEME="jonathan"
```

### 3. 安装 oh-my-zsh 的插件

如果你需要安装其他的插件，可以去插件地址：`https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins

- git

这是 oh-my-zsh 默认的插件，不需要额外下载。如果你的项目是通过 git 进行的管理，那么当你在这个项目目录打开终端时会显示当前的分支名。

- sudo

这是 oh-my-zsh 默认的插件，不需要额外下载。偶尔输入某个命令，会提示没有权限，需要加 sudo，这个时候只需要按两下 `ESC` 键盘，就会在命令行头部帮你加上 sudo。

- 安装 [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) —— 自动补全历史命令

这是一个非常好用的一个插件，会记录你之前输入过的所有命令，并且自动匹配你可能想要输入命令，然后按方向键`→`补全

> 历史命令可通过 `cat ~/.zsh_history` 进行查看。

```
# 安装
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# 编辑配置信息
vim ~/.zshrc

# 在 plugins 中，添加 zsh-autosuggestions
plugins=(zsh-autosuggestions)

# 需要重启终端
```

- 安装 [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) —— 提前检测输入命令是否正确

命令太多，有时候记不住，等输入完了才知道命令输错了，这个插件直接在输入过程中就会提示你，当前命令是否正确，错误红色，正确绿色。

```
# 安装
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# 编辑配置信息
vim ~/.zshrc

# 在 plugins 中，添加 zsh-syntax-highlighting
plugins=(zsh-syntax-highlighting)

# 需要重启终端
```