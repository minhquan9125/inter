#!/bin/bash
set -e

echo "Installing server dependencies..."
cd server
npm install --legacy-peer-deps
cd ..

echo "Installing client dependencies..."
cd client
npm install --legacy-peer-deps
npm run build
cd ..

echo "Starting server..."
cd server
npm start
