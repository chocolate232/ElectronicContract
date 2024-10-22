# 使用官方的 IPFS 镜像作为基础镜像
FROM ipfs/go-ipfs:latest

# 暴露 IPFS 的默认端口
EXPOSE 4001 5001 8080

# 运行 IPFS 守护进程
CMD ["ipfs", "daemon", "--migrate=true"]
