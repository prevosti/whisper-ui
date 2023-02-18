FROM python:3.9-bullseye

RUN apt-get update && apt-get install -y \
  ffmpeg \
  git \
  && rm -rf /var/lib/apt/lists/*

RUN ls -lha

COPY . .

RUN pip install -r requirements.txt

CMD streamlit run app/01_🏠_Home.py
