docker run \
    --name postgres \
    --restart=always \
    -p 5432:5432 \
    -e POSTGRES_DB=postgres \
    -e POSTGRES_USER=luna \
    -e POSTGRES_PASSWORD=luna@202412 \
    -v ./data:/var/lib/postgresql/data \
    -d postgres:17.2