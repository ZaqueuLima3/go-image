FROM golang

COPY main.go .

RUN go build main.go

FROM scratch

COPY --from=0 /go/main .

CMD ["./main"]