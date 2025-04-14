FROM golang:1.24.2-alpine

RUN go install github.com/steffenfritz/mxcheck@latest

ENTRYPOINT ["mxcheck"]