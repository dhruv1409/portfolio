#!/bin/bash

# Pull the latest repo changes from "main" branch
git pull origin main

# Navigate to your React project directory
cd ~/portfolio

# Build the React project
npm install
npm run build


# Copy the build folder to /var/www/html/dhruvdev.com
sudo rm -r /var/www/html/dhruvdev.com
sudo cp -r build/* /var/www/html/dhruvdev.com

# Restart Apache server
sudo systemctl restart apache2
