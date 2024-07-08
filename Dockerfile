FROM python:3.11.6-slim-bookworm

WORKDIR /app

RUN  apt update && apt install -y libglib2.0-dev && rm -rf /var/lib/apt/lists

COPY ./ /app/

RUN pip install --no-cache-dir -r requirements.txt
