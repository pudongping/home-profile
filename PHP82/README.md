![image.png](https://upload-images.jianshu.io/upload_images/14623749-fe91705973aa3f8d.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

这里我只用来偶尔跑跑 PHP 脚本，在实际项目中还是会直接采用 docker 去跑 PHP，以防污染了本机的编程环境，因此直接使用 homebrew 来安装即可。

```bash
brew install php@8.2
```

添加进环境变量中

```bash
echo 'export PATH="/usr/local/opt/php@8.2/bin:$PATH"' >> ~/.zshrc
echo 'export PATH="/usr/local/opt/php@8.2/sbin:$PATH"' >> ~/.zshrc
```