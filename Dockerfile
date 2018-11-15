FROM golang:1.10.1
WORKDIR /go/src/github.com/shaxiangyu/simple-app-1/
COPY . .
RUN CGO_ENABLED=0 GOOS=linux go build -v -o app
COPY . .
ENTRYPOINT ["/app"]
