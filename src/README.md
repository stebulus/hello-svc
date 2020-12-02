# Hello Net

A basic Go program that responds to requests with an environment variable templated into the response.

# Building and Running

## Locally

1. [Install Go](https://golang.org/doc/install)

1. Build and/or run

   ```
   go build main.go
   ./main
   ```

   or

   ```
   go run main.go
   ```

## With Docker

1. `docker pull golang:1.14`

1. Build and/or run

   ```
   docker run --rm -v "$PWD":/usr/src/myapp -w /usr/src/myapp golang:1.14 go build main.go
   docker run -e "ENV=production" --rm -p 8080:8080 -v "$PWD":/usr/src/myapp -w /usr/src/myapp golang:1.14 ./main
   ```

   or

   ```
   docker run -e "ENV=production" --rm -p 8080:8080 -v "$PWD":/usr/src/myapp -w /usr/src/myapp golang:1.14 go run main.go
   ```

# Interacting

Visit `localhost:8080/hello` to see the response.

For example:
```
Hello! I am running in production
```
