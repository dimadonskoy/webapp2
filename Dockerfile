# Minimal Alpine image for testing
FROM alpine:latest

# Install Python and pip
RUN apk add --no-cache python3 py3-pip

# Set working directory
WORKDIR /app

# Copy requirements and install dependencies
COPY . /app 
RUN pip3 install --no-cache-dir --break-system-packages -r requirements.txt

# Expose port
EXPOSE 80 8888

# Run the app
CMD ["python3", "app.py"]
