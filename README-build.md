# Build the docker image from scratch (it builds the builder and runtime stages):
docker build -t whisper-ui .

# Build the docker image from builder (it only builds the runtime stage)
docker build --target runtime -t whisper-ui .

# Run it with /data volume (to persist data)
docker run -d --rm -p 8501:8501 -v "$(pwd)"/data:/data --name whisper-ui whisper-ui

# Run it with /data volume and code hot loading on /app
docker run -d --rm -p 8501:8501 -v "$(pwd)"/data:/data -v "$(pwd)"/app:/app --name whisper-ui whisper-ui