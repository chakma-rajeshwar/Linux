#!/bin/bash

# Download and run the NodeSource setup script
curl -fsSL https://rpm.nodesource.com/setup_lts.x | bash -

# Clean apt cache
sudo apt clean all

# Install Node.js
apt install -y nodejs

# Check Node.js version
node --version

# Check npm version
npm --version

# Install yarn globally using npm
npm install yarn -g

# Check yarn version
yarn --version

# Install pm2 globally using npm
npm install pm2@latest -g

# Check pm2 version
pm2 --version

echo "Installation completed successfully!"
