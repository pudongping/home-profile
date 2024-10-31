官网地址：`https://brew.sh/zh-cn/`

### 安装命令

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

![image.png](https://upload-images.jianshu.io/upload_images/14623749-734b4b57c357401b.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

执行完毕之后还需要执行以下命令，将 Homebrew 添加到 PATH 中

```bash
# 如果你的 Mac 芯片是 intel 的，可能需要执行
(echo; echo 'eval "$(/usr/local/bin/brew shellenv)"') >> ~/.zprofile
    eval "$(/usr/local/bin/brew shellenv)"
    
# 如果你的 Mac 芯片是 m 系列的，可能你需要执行
# 具体看 homebrew 的安装提示
echo >> /Users/pudongping/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/pudongping/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"    
```

### 配置环境变量

```bash
# set homebrew

# 更换源
#export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
#export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles

# 禁止自动更新
export HOMEBREW_NO_AUTO_UPDATE=true
```