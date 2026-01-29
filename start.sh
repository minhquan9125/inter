#!/bin/bash
set -e

echo "Installing server dependencies..."
cd server
npm install
npm run build 2>/dev/null || true
cd ..

echo "Installing client dependencies..."
cd client
npm install
npm run build
cd ..

echo "Starting server..."
cd server
npm start
