docker run \
    --name zookeeper \
    -p 2181:2181 \
    --restart=always \
    -d zookeeper:3.9.3