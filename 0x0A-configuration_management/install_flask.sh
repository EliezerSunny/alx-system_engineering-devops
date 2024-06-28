#!/bin/bash

# Update package list
apt-get update

# Install pip3 if not installed
if ! command -v pip3 &> /dev/null; then
    apt-get install -y python3-pip
fi

# Install Flask version 2.1.0 using pip3
pip3 install Flask==2.1.0

# Verify the installation
flask --version
