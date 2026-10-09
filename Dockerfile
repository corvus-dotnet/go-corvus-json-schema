FROM golang:1.27-alpine AS build
WORKDIR /usr/src/harness
COPY go.mod go.sum ./
RUN go mod download
COPY main.go .
# No cgo, so the Go toolchain cross-compiles for the target platform without emulation.
RUN CGO_ENABLED=0 go build -trimpath -o /bowtie-corvus-json-schema .

FROM alpine:3.24
COPY --from=build /bowtie-corvus-json-schema /usr/local/bin/
CMD ["bowtie-corvus-json-schema"]
