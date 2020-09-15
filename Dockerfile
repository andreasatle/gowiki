FROM golang:latest

WORKDIR /go/src/app

COPY . .

RUN go get -d github.com/gorilla/mux
RUN go install -v github.com/gorilla/mux
RUN go get -d -v ./...
RUN go install -v ./...

CMD ["app"]