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