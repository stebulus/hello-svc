# Hello Net

A basic program that responds to requests with an environment variable templated into the response.

## Building

1. [install Go](https://golang.org/doc/install) if you don't already have it
1. Clone this repo.
1. `cd` into that directory
1. `go run main.go` OR `go build main.go` then `./main`
1. Visit `localhost:8080/hello` to see the response

The program will look for an env variable `ENV` that it will template into the response.
