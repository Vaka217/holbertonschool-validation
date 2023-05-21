FROM golang:1.15.8-alpine

RUN apt-get update && apt-get install -y hugo && \
    GO111MODULE=on && \
    go get -u github.com/golangci/golangci-lint/cmd/golangci-lint@v1.33.0

WORKDIR /usr/src/myappexport