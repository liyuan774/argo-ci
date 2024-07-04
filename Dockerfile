# 使用官方的 Go 镜像作为基础镜像
FROM golang:1.21-alpine

# 设置工作目录
WORKDIR /app

# 复制当前目录中的所有文件到工作目录
COPY . .

# 构建 Go 应用程序
RUN go build -o main .

# 暴露应用程序的端口
EXPOSE 8000

# 运行 Go 应用程序
CMD ["./main"]

