# 使用官方的 node 镜像作为基础镜像
FROM node:14

# 安装 ganache-cli
RUN npm install -g ganache-cli

# 暴露 ganache-cli 的新端口
EXPOSE 7545

# 运行 ganache-cli 并指定端口
CMD ["ganache-cli", "--host", "0.0.0.0", "--port", "7545"]
