docker run \
    --name ds-master \
    -p 12345:12345 \
    -e REGISTRY_ZOOKEEPER_CONNECT_STRING=locahost:2181 \
    -e SPRING_DATASOURCE_URL=jdbc:postgresql://locahost:5432/dolphinscheduler \
    -e SPRING_DATASOURCE_USERNAME=luna \
    -e SPRING_DATASOURCE_PASSWORD=luna@202412 \
    --restart=always \
    -d apache/dolphinscheduler-master:3.1.9