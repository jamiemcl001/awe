FROM golang:1.17-alpine

WORKDIR /tmp/awe/app
COPY . .
RUN go build -o awe ./cmd

ENTRYPOINT [ "./awe" ]