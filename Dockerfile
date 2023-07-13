from golang:1.20

workdir /app

copy main.go /

run go build -o /server

expose 8080

cmd[ "/server" ]