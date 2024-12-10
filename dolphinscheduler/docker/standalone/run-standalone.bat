docker run `
    --name dolphinscheduler `
    -p 12345:12345 `
    -p 25333:25333 `
    -e DATABASE=dolphinscheduler `
    -e SPRING_DATASOURCE_URL=jdbc:postgresql://locahost:5432/dolphinscheduler `
    -e SPRING_DATASOURCE_USERNAME=luna `
    -e SPRING_DATASOURCE_PASSWORD=luna@202412 `
    --restart=always `
    -d apache/dolphinscheduler-standalone-server:3.1.9