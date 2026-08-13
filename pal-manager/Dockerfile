FROM golang:1.26-alpine AS build
WORKDIR /src
COPY go.mod go.sum* ./
RUN go mod download
COPY . .
RUN CGO_ENABLED=0 go build -o /pal-manager ./cmd/pal-manager

FROM gcr.io/distroless/static:nonroot
COPY --from=build /pal-manager /pal-manager
EXPOSE 8080
ENTRYPOINT ["/pal-manager"]
