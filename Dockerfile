FROM golang:1.24.2-alpine AS builder

RUN go install github.com/steffenfritz/mxcheck@latest

FROM gcr.io/distroless/static-debian12 AS distro

COPY --from=builder /go/bin/mxcheck /mxcheck

ENTRYPOINT ["/mxcheck"]