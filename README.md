# Hello World Server

This is a light-weight and simple docker image that runs a simple file
server and returns the MESSAGE environment variable.

## Usage

To build and run:

```
docker build . -t hello_world_server
docker run -p 8000:8000 --env MESSAGE="Bonjour le monde" hello_world_server
```

## Inspiration

This repo was inspired by [crccheck/docker-hello-world](https://github.com/crccheck/docker-hello-world).
