![image.png](https://upload-images.jianshu.io/upload_images/14623749-fe91705973aa3f8d.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

这里我只用来偶尔跑跑 PHP 脚本，在实际项目中还是会直接采用 docker 去跑 PHP，以防污染了本机的编程环境，因此直接使用 homebrew 来安装即可。

```bash
brew install php@8.2
```

添加进环境变量中

```bash
# 如果你的 Mac 芯片是 intel 的，可能需要执行
echo 'export PATH="/usr/local/opt/php@8.2/bin:$PATH"' >> ~/.zshrc
echo 'export PATH="/usr/local/opt/php@8.2/sbin:$PATH"' >> ~/.zshrc

# 如果你的 Mac 芯片是 m 系列的，可能你需要执行
echo 'export PATH="/opt/homebrew/opt/php@8.2/bin:$PATH"' >> ~/.zshrc
echo 'export PATH="/opt/homebrew/opt/php@8.2/sbin:$PATH"' >> ~/.zshrc
export LDFLAGS="-L/opt/homebrew/opt/php@8.2/lib"
export CPPFLAGS="-I/opt/homebrew/opt/php@8.2/include

# 具体需要如何执行，就需要看安装完毕之后的提示信息是怎样的
```