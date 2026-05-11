FROM python:3.11-slim-bookworm

# Install git (only if needed)
RUN apt-get update && apt-get install -y git && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

WORKDIR /TheMovieProviderBot

# Copy all files from your GitHub repo
COPY . .

# Install requirements
RUN pip3 install --no-cache-dir -U pip && \
    pip3 install --no-cache-dir -U -r requirements.txt

# Make start script executable
RUN chmod +x start.sh

# Start the bot
CMD ["/bin/bash", "start.sh"]
