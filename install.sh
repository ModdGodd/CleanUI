#!/bin/bash

if [ "$(uname)" != "Darwin" ]; then
  echo "This script is intended for macOS only."
  exit 1
fi

mkdir -p "/tmp/CleanUI"
if [ ! -d "/Applications/CleanUI.app" ]; then
  echo "CleanUI is not installed. Proceeding with installation."
else
  echo "CleanUI is already installed. Deleting.."
  rm -rf "/Applications/CleanUI.app"
  echo "CleanUI has been deleted. Proceeding with installation."
fi
echo "Downloading CleanUI..."
curl -L -o "/tmp/CleanUI/CleanUI.zip" "https://github.com/ModdGodd/CleanUI/releases/download/v0.1.0/CleanUI-0.1.0-arm64-mac.zip"
echo "Extracting CleanUI..."
unzip -o "/tmp/CleanUI/CleanUI.zip" -d "/tmp/CleanUI"
mv -f "/tmp/CleanUI/CleanUI.app" "/Applications"
rm -rf "/tmp/CleanUI"

echo "CleanUI has been successfully installed!"
