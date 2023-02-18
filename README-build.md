# Build the docker image
docker build -t whisper-ui .

# Run it
docker run -d --rm -p 8501:8501 -v "$(pwd)"/data:/data --name whisper-ui whisper-ui