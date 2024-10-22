# 使用 golang:alpine 作为构建阶段的基础镜像
FROM golang:alpine AS builder

# 在 Dockerfile 中启用远程调试

RUN go install github.com/go-delve/delve/cmd/dlv@latest


WORKDIR /build



COPY .. /build
RUN go mod download
COPY service/user/rpc/etc /app/etc
RUN go build -gcflags "all=-N -l" -o /app/user service/user/rpc/user.go

# 使用 scratch 作为运行阶段的基础镜像
FROM debian:stable-slim
EXPOSE 9000 2345


# 从构建阶段复制 Delve 和应用程序
COPY --from=builder /go/bin/dlv /dlv
COPY --from=builder /app/user /app/user
COPY --from=builder /app/etc /app/etc

# 使用 Delve 启动应用
CMD ["/dlv", "--listen=:2345", "--headless=true", "--api-version=2", "--accept-multiclient", "exec", "/app/user", "--", "-f", "/app/etc/user.yaml"]