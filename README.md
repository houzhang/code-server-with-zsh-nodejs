Build image
```
docker build --no-cache=true --tag jerrylhz/code-server-with-zsh-nodejs:latest .
```

Run image
```
docker run --publish 8000:8080 --name code-server jerrylhz/code-server-with-zsh-nodejs:latest
```

Push image
```
docker push jerrylhz/code-server-with-zsh-nodejs:latest
```
