FROM golang:1.15.8-alpine

RUN RUN apk update && apk add --no-cache hugo=0.84.0 && \
    go get -u github.com/golangci/golangci-lint/cmd/golangci-lint@v1.33.0

WORKDIR /usr/src/myapp