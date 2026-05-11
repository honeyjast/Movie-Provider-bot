#!/bin/bash

echo "Starting TheMovieProviderBot...."

# Optional: Update pip
pip3 install --no-cache-dir -U pip

# Start the bot
python3 -m bot
# OR if your main file is bot.py directly:
# python3 bot.py
