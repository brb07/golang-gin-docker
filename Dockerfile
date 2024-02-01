# Use an official Golang runtime as a parent image
FROM golang:1.21.6-alpine

# Download Air for module HOT Reloading
RUN go install github.com/cosmtrek/air@latest

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed dependencies
RUN go mod download

# Expose port 8080 to the outside world
EXPOSE 1337


# Run the executable
CMD ["air"]
