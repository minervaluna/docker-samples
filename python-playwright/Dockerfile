# 基础镜像：Python 3.12
FROM python:3.12-slim

# 设置不交互式模式，防止 tzdata 等卡住
ENV DEBIAN_FRONTEND=noninteractive

# 安装系统依赖（Playwright 浏览器依赖）
RUN apt-get update && apt-get install -y \
    curl \
    gnupg \
    build-essential \
    libglib2.0-0 \
    libnss3 \
    libnss3-dev \
    libnspr4 \
    libdbus-1-3 \
    libatk1.0-0 \
    libatk-bridge2.0-0 \
    libx11-6 \
    libxcomposite1 \
    libxdamage1 \
    libxext6 \
    libxfixes3 \
    libxrandr2 \
    libgbm1 \
    libxcb1 \
    libxkbcommon0 \
    libasound2 \
    libexpat1 \
    libatspi2.0-0 \
    xdg-utils \
    ca-certificates \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# 安装 pip 工具和 Playwright
RUN pip install --no-cache-dir poetry playwright

# 安装浏览器
RUN playwright install --with-deps

# 设置默认工作目录（方便后续继承使用）
WORKDIR /app

# 默认入口为 shell，可被子镜像覆盖
CMD ["/bin/bash"]
