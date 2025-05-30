FROM python:3.12-slim

ENV DEBIAN_FRONTEND=noninteractive

# 安装基础工具和必要的系统库（playwright 不会自动安装这些工具）
RUN apt-get update && apt-get install -y \
    curl \
    gnupg \
    build-essential \
    ca-certificates \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# 安装playwright
RUN pip install playwright

# 安装浏览器及浏览器运行依赖
RUN playwright install --with-deps

# 设置默认工作目录（方便后续继承使用）
WORKDIR /app

# 默认入口为 shell，可被子镜像覆盖
CMD ["/bin/bash"]