FROM python:3.11-slim-bookworm

# Update system and install git
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y git && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Copy and install requirements
COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir -U pip && \
    pip3 install --no-cache-dir -U -r /requirements.txt

# Create app directory and set working directory
RUN mkdir -p /TheMovieProviderBot
WORKDIR /TheMovieProviderBot

# Copy start script
COPY start.sh /start.sh

# Make start script executable (good practice)
RUN chmod +x /start.sh

# Start command
CMD ["/bin/bash", "/start.sh"]
