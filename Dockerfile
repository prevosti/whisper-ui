# Build Stage
FROM python:3.9-slim-bullseye AS builder

RUN apt-get update && apt-get install -y \
  ffmpeg \
  git \
  && rm -rf /var/lib/apt/lists/*

ADD requirements.txt .

RUN pip install -r requirements.txt

# Runtime stage
FROM builder AS runtime

# COPY . .

CMD streamlit run app/01_🏠_Home.py
