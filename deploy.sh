#!/bin/bash

# Step 1: Navigate to the app directory
chmod 400 mykey.pem

cd ~/NetflixMovieCatalog/NetflixMovieCatalog

# Step 2: Set up a Python virtual environment (if not already done)
if [ ! -d ".venv" ]; then
    python3 -m venv .venv
fi

# Step 3: Activate the virtual environment
source .venv/bin/activate

# Step 4: Install/update the required Python packages
pip install --upgrade pip
pip install -r requirements.txt

# Step 5: Restart the Flask app service
sudo systemctl restart netflix_movie_catalog
