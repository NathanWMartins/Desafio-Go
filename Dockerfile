from golang:1.20

workdir /app

copy go.mod .
copy main.go .

run go build -o server .

entrypoint [ "/app/server" ]