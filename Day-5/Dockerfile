# Stage 1: Build the application
FROM golang:1.16-alpine AS build

WORKDIR /app

# Copy go.mod and go.sum files and install dependencies
COPY go.mod go.sum ./
RUN go mod download

# Copy the source code and build the binary
COPY . .
RUN go build -o myapp

# Stage 2: Run the application
FROM alpine:latest

WORKDIR /root/

# Copy the binary from the previous stage
COPY --from=build /app/myapp .

# Expose port and run the app
EXPOSE 8080
CMD ["./myapp"]
