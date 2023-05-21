FROM golang:1.15.8-alpine

RUN apt-get update && go install github.com/gohugoio/hugo@v0.84.0 && go install github.com/golangci/golangci-lint/cmd/golangci-lint@v1.33.0 && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/myapp