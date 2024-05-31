官网地址：`https://www.docker.com/products/docker-desktop/`

## 新建网络

```bash
# 创建名称为 alex-network 的网络
docker network create alex-network

# 查看是否已经建立成功
docker network list
```

## 安装 mysql 5.7

```bash
# intel 芯片的 Mac 需要执行
docker pull mysql:5.7.32
# Apple 芯片的 Mac 需要执行
docker pull mysql/mysql-server:5.7.32

docker images

docker run -itd --name alex-mysql \
--network alex-network \
-p 3306:3306 \
-e MYSQL_ROOT_PASSWORD=123456 mysql:5.7.32
```

## 安装 redis 6.2.6

```bash
# 安装 6.2.6 版本的 redis
docker pull redis:6.2.6

docker images

docker run -itd --name alex-redis \
--network alex-network \
-p 6379:6379 redis:6.2.6

# 进入 alex-redis 容器进行查看
docker exec -it alex-redis /bin/bash
```

## 安装 hyperf php74

```bash
docker run --name php74codes \
-v /Users/pudongping/glory/codes:/codes \
--net=alex-network \
-p 9500-9550:9500-9550 -it \
--privileged -u root \
--entrypoint /bin/sh \
hyperf/hyperf:7.4-alpine-v3.11-swoole

# docker 容器内可能要添加阿里云 composer 镜像
composer config -g repo.packagist composer https://mirrors.aliyun.com/composer

```

如果需要使用 protoc 生成 .pb 文件时

```shell
# 安装包管理工具 protoc，下面以 alpine 为例
apk add protobuf

# 安装 protoc-gen-grpc 插件（如果仅安装 protobuf 包之后执行生成 grpc 代码命令时会报错的话，再考虑安装插件）
# 如果是生成 php grpc 代码，下载 protobuf 时，会自动下载 grpc_php_plugin 插件，因此不需要多此一举
apk add grpc

# 使用 protoc 自动生成代码
#protoc --php_out=plugins=grpc:../grpc user.proto
protoc --php_out=grpc/ ./proto/*
```

如果需要使用 php8 时，需要使用 `hyperf/hyperf:8.0-alpine-v3.16-swoole` 镜像。