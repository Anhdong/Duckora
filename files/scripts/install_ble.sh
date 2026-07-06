#!/usr/bin/env bash
# Tell this script to exit if there are any errors.
set -oue pipefail

# Download the latest pre-compiled nightly release
echo "Downloading ble.sh..."
curl -LO https://github.com/akinomyoga/ble.sh/releases/download/v0.4.0-devel3/ble-0.4.0-devel3.tar.xz

echo "Extracting the file..."
mkdir -p /usr/share/blesh
tar xf ble*.tar.xz -C /usr/share/blesh --strip-components=1

echo "Cleaning up..."
rm -v ble*.tar.xz
echo "ble.sh installed successfully to /usr/share/blesh"
