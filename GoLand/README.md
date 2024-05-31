![image.png](https://upload-images.jianshu.io/upload_images/14623749-2903d097de6a2c39.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

设置代理

```bash
# 1. 七牛 CDN
go env -w  GOPROXY=https://goproxy.cn,direct

# 2. 阿里云
go env -w GOPROXY=https://mirrors.aliyun.com/goproxy/,direct

# 3. 官方
go env -w  GOPROXY=https://goproxy.io,direct
```

设置 GOPATH ，这里我希望的是一个项目设置一个 GOPATH 方便管理插件包

![image.png](https://upload-images.jianshu.io/upload_images/14623749-28435b83c4967f2a.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

后续需要设置环境变量时，就在这里配置

![image.png](https://upload-images.jianshu.io/upload_images/14623749-a978b1329eebc55a.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

查看 `go env`

![image.png](https://upload-images.jianshu.io/upload_images/14623749-c31404137de0801e.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

设置主题

![image.png](https://upload-images.jianshu.io/upload_images/14623749-000b884c8997a3bb.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

设置代码字体为 `JetBrains Mono` 12号字体

![image.png](https://upload-images.jianshu.io/upload_images/14623749-3fe22faffb6a67be.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

设置左侧目录栏字体为 `JetBrains Mono` 12号字体

![image.png](https://upload-images.jianshu.io/upload_images/14623749-e242ed0a43a59ed2.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


设置包的引入规范

![image.png](https://upload-images.jianshu.io/upload_images/14623749-3583b1c7dde58ea3.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

安装 **Protobuf** 扩展，禁用掉默认的 **Protocol Buffers** 扩展和 **gRPC** 扩展，因为这个插件和这两个插件有冲突，详见：[文档](https://plugins.jetbrains.com/plugin/16422-protobuf)

> 个人感觉这个插件比官方的 Protocol Buffers 插件好用。

![image.png](https://upload-images.jianshu.io/upload_images/14623749-0fcade5ad032699b.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

关闭掉 `Dependency issues (go list -m -u)` 这一项，否则每当你打开一个项目时都会帮你自动执行 `go list -json -m -u -mod=readonly all` 然后报错 `Fetching dependency updates for xxxxxx` 还是挺烦的哈

![image.png](https://upload-images.jianshu.io/upload_images/14623749-07722fcf26cbbc5a.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

设置注释前添加空格

![image.png](https://upload-images.jianshu.io/upload_images/14623749-d9af5eb02c0a1d46.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

设置自动格式化工具 [goimports-reviser](https://github.com/incu6us/goimports-reviser) （这个工具是 goimports 的替代品） **这个按需来配置**

```bash
go install -v github.com/incu6us/goimports-reviser/v3@latest
```

因为我在 GoLand 中为每一个项目都设定了 GOPATH 因此执行以上命令后，该工具会被安装到项目的 `$GOPATH/bin` 目录下，你可以直接在 GoLand 的命令行中进行查看。

![image.png](https://upload-images.jianshu.io/upload_images/14623749-251e478eb8aa9c6e.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

```bash
-rm-unused -set-alias -format $FilePath$
```

![image.png](https://upload-images.jianshu.io/upload_images/14623749-ef243770993e481b.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)