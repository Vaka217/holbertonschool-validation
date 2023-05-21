FROM golang:1.15.8-alpine

RUN apk update && apk add --no-cache hugo && \
    export GO111MODULE=on && \
    go get -u github.com/golangci/golangci-lint/cmd/golangci-lint@v1.33.0

WORKDIR /usr/src/myapp