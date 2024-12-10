docker run `
    --name redis `
    -p 6379:6379 `
    -v ./data:/data `
    -d redis:7.4.1