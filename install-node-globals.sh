#!/bin/bash

# Install essential global npm packages for TypeScript development

echo "Installing global Node.js packages..."

# Essential TypeScript tools
npm install -g typescript
npm install -g ts-node
npm install -g @typescript-eslint/parser
npm install -g @typescript-eslint/eslint-plugin

# Development utilities
npm install -g eslint
npm install -g prettier
npm install -g nodemon
npm install -g npm-check-updates

# Package managers
npm install -g pnpm
npm install -g yarn

# Development servers and tools
npm install -g serve
npm install -g http-server
npm install -g json-server

echo "✅ Global Node.js packages installed!"
echo "You may want to run this script after setting up Node.js on a new machine."
