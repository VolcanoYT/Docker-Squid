# Docker Squid

Because my internet is slowing down, I want a local proxy but want an easy step. (base alpine)

## How to Use!

Use docker to run it (VolcanoYT Repo requires a password, please ask me first)

```bash
docker run --rm -it -p 3128:3128 repo.volcanoyt.com/docker-squid:last
```

or please build it manually so you can use it without a password :)

```bash
docker build -t "docker-squid:last" -f Dockerfile .
```

- Proxy URL: demo:demo@localhost:3128 

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

```bash
git clone https://github.com/volcanoyt/Docker-Squid.git
docker build -t "repo.volcanoyt.com/docker-squid:last" -f Dockerfile .
docker push repo.volcanoyt.com/docker-squid:last
```

## License
[MIT](https://choosealicense.com/licenses/mit/)