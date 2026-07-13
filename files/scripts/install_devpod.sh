#!/usr/bin/env bash
# Tell this script to exit if there are any errors.
set -oue pipefail

echo "Downloading devpod..."
curl -L -o devpod "https://github.com/loft-sh/devpod/releases/latest/download/devpod-linux-amd64"

echo "Installing..."
sudo install -c -m 0755 devpod /usr/local/bin 

echo "Cleaning up..."
rm -f devpod

echo "devpod installed successfully to /usr/local/bin"
