FROM golang:1.21.9-alpine

WORKDIR /app

COPY go.mod go.sum ./

RUN go mod download

COPY licenses/ ./licenses/

COPY *.go ./

RUN go build -o ./vuln-go

EXPOSE 8080

CMD ["./vuln-go"]
