FROM golang:1.17-buster as build

WORKDIR /app

COPY go.mod ./

RUN go mod download

COPY . ./

ENV GOARCH=amd64

RUN go build -o /go/bin/app

## Deploy

FROM gcr.io/distroless/base-debian11

COPY --from=build /go/bin/app /app

EXPOSE 8080

USER nonroot:nonroot

CMD ["/app"]

