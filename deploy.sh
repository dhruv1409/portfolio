#!/bin/bash

# Navigate to your React project directory
cd ~/portfolio

# Build the React project
npm install
npm run build

# Copy the build folder to /var/www/dhruv.com/
sudo cp -r build/* /var/www/dhruv.com/

# Restart Apache server
sudo service apache2 restart
