# UV

现在主流的就用 uv 了，也就是说可以不用 `pyenv` 和 `pipenv` 了，直接用 uv 来管理 python 的版本和虚拟环境。

## 安装

```bash
# macOS and Linux
curl -LsSf https://astral.sh/uv/install.sh | sh
```

初始化当前项目

```bash
uv init
```

安装多个 python 版本

```bash
uv python install 3.10 3.11 3.12

# 安装最新的 python 版本
uv python install

# 查看可用的和已安装的 python 版本
uv python list
```

在当前目录中使用特定的 python 版本

```bash
uv python pin 3.12
```

## 运行项目

```bash
uv run main.py
```

## 管理依赖项

添加依赖包

```bash
uv add requests

# 安装指定版本
uv add 'requests==2.31.0'

# 更换替代源 Git 依赖项
uv add git+https://github.com/psf/requests
```

移除依赖包

```bash
uv remove requests
```

升级依赖包

```bash
uv lock --upgrade-package requests
```

# 安装 pyenv

- [pyenv](https://github.com/pyenv/pyenv)：Python 的版本管理器

方便管理多个版本的 python

```bash
# 安装 pyenv
brew install pyenv

# 查看 pyenv 指令列表
pyenv commands
# 查看所有可选的 python 版本
pyenv install -l
# 查看已经安装的所有 python 版本
pyenv versions
# 显示当前的 python 版本及其本地路径
pyenv version
```

## 添加环境变量

```bash
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo '[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(pyenv init -)"' >> ~/.zshrc
```

## 通过 pyenv 安装指定版本的 python

这里以安装 python 3.8.18 为示例，其他版本只需要更换版本号即可。

```bash
# 安装 python 3.8.18
pyenv install 3.8.18

# 安装完毕之后
pyenv rehash
```

# 安装 pipenv

方便对每一个项目创建虚拟环境。

先切换到指定的版本

```bash
# 只会在当前 shell 中生效，退出 shell 会话后就失效
pyenv shell 3.8.18

# 检查 python 的版本是否切换成功
which pip3
which python3
```

![image.png](https://upload-images.jianshu.io/upload_images/14623749-aa8b8d6e39a96024.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

```bash
# 安装 pipenv
pip3 install pipenv
```

然后在项目目录下建立虚拟环境。

![image.png](https://upload-images.jianshu.io/upload_images/14623749-bcafbeeb62424611.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

```bash
# 先切换到项目目录下，然后切换 python 版本
pyenv shell 3.8.18

# 查看 python 版本是否切换成功
python3 -V

# 使用 python 3.8.18 建立虚拟环境
pipenv --python 3.8.18

# 激活虚拟环境
pipenv shell

在这里也可以直接使用 pipenv install 安装项目中的依赖包，但是我们得明确知道其实这里的 pipenv 用的是刚刚通过 pyenv shell 3.8.18 切换的环境中的 pipenv 而不是虚拟环境中的 pipenv

你可以通过再次打开一个终端窗口来验证，你会发现当你敲 pipenv 命令时，会提醒你没有这个命令。
```

在 PyCharm 编辑器中配置项目的虚拟环境，需要配置 python 解释器。

![显示所有的解释器](https://upload-images.jianshu.io/upload_images/14623749-928ec10bb9cbcf70.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![从本地添加解释器](https://upload-images.jianshu.io/upload_images/14623749-01125358750b9d47.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![选择已经存在的解释器](https://upload-images.jianshu.io/upload_images/14623749-66e5c638c3bdf0a2.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![选择之前已经创建好的虚拟环境中的解释器](https://upload-images.jianshu.io/upload_images/14623749-3f548e80cc8ff829.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

勾选住“将此虚拟环境与当前项目关联起来”

![image.png](https://upload-images.jianshu.io/upload_images/14623749-2af5cefc433db111.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

因为虽然对当前项目建立了虚拟环境，但是并不会将系统中的 python 一些命令（比如 pipenv）也复制过来，所以就需要对一些用得到的命令进行建立软连接。

![image.png](https://upload-images.jianshu.io/upload_images/14623749-8ddb5117d75795bb.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

```bash
# $HOME/.local/share/virtualenvs/demo-py-JND4bVjW 是我这个项目的虚拟环境目录
ln -s $HOME/.pyenv/versions/3.8.18/bin/pipenv $HOME/.local/share/virtualenvs/demo-py-JND4bVjW/bin/pipenv
```

当然你也可以不用去建立软连接，但是你就得自己手动去切换一下 python 版本而不是用虚拟环境中的 python。**我觉得这种方式比较麻烦，就直接建立一个软连接，一了百了。**

就此，python 的环境就搭建好了。
