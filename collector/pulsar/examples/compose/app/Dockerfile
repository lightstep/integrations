FROM golang:1.17 AS builder

WORKDIR /app
COPY . .
RUN go get github.com/apache/pulsar-client-go/pulsar
RUN CGO_ENABLED=0 GOOS=linux go build -o pulsar_demo .

FROM alpine:latest
COPY --from=builder /app/pulsar_demo /pulsar_demo

ENTRYPOINT ["/pulsar_demo"]
