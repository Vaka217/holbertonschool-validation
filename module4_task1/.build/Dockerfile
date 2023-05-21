FROM golang:latest


RUN apt-get update && apt-get install -y hugo && \
    go get -u github.com/golangci/golangci-lint/cmd/golangci-lint@v1.33.0

WORKDIR /usr/src/myapp