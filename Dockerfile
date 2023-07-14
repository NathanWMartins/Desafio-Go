FROM golang:1.17-alpine AS builder

WORKDIR /app

COPY go.mod .
COPY main.go .

run go build -o server

ENTRYPOINT [ "/app/server" ]