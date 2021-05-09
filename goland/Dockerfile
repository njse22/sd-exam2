FROM golang:1.14-alpine
RUN mkdir /app
COPY . /app
WORKDIR /app
RUN apk update && apk add git
RUN go get -u github.com/gorilla/mux
RUN go get github.com/lib/pq
RUN go build -o server .
CMD ["/app/server"]