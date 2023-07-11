
FROM debian:11.0
RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends python3 python3-pip ffmpeg \
    && pip install -U openai-whisper \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
