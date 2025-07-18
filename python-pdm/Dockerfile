FROM python:3.12-slim

# 安装PDM
RUN pip install --no-cache-dir pdm

# 设置工作目录
WORKDIR /app

# 配置PDM环境变量
ENV PYTHONPATH=/app
ENV PIP_DISABLE_PIP_VERSION_CHECK=1
ENV PIP_NO_CACHE_DIR=1

# 默认入口为 shell，可被子镜像覆盖
CMD ["/bin/bash"]