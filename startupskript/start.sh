#!/bin/bash


touch ~/testfile
echo "hello world" > test.txt
echo "das ist mein hostname" > ~/my_hostname.txt
set -e
echo "** installing nginx **"
sudo apt-get update
sudo apt-get install -y nginx
sudo systemctl enable nginx
sudo systemctl restart nginx

echo "**   Installation Complteted!!   **"

echo "Welcome to Nginx which is deployed using Terraform!!!" > /var/www/html

echo "**   Startup script completes!!   **"

touch ~/testfile
echo "hello world" > test.txt
echo "das ist mein hostname" > ~/my_hostname.txt
