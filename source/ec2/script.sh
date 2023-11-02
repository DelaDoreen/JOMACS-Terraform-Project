#!/bin/bash

# Created by: Doreen Dela Agbedoe
# Date created: 2023-10-28
# Date last modified: 2023-10-31
# Purpose: This script is used to install and configure nginx on an Ubuntu Linux system.
# Project: Jomacs Terraform Project


#update system
sudo apt-get update
sudo apt-get upgrade 

#install nginx
sudo apt-get install nginx -y

echo -e '<h1>Congratulations! Doreen Dela. You have installed Nginx.</h1>
<h3>You have also successfully configured a proxy server.</h3>
<h4>Your configurations include a VPC, 3 subnets, route tables, security groups, target group, EC2, and a shell script</h4>

<h3>Created by:Doreen Dela Agbedoe</h3>
<ol>
  <li><a href="https://github.com/DelaDoreen">Github</a></li>
  <li><a href="https://www.linkedin.com/in/doreen-dela-agbedoe-a341a0255/">LinkedIn</a></li>
</ol>

<h3>Well done!</h3>' > /var/www/html/index.html


#start nginx
sudo systemctl enable nginx
sudo systemctl start nginx

#create proxy server to listen on port 80
sudo tee /etc/nginx/sites-available/practice.conf <<-EOF
server {
  listen 80;

  location / {
    proxy_http_version 1.1;
    proxy_set_header Upgrade \$http_upgrade;
    proxy_set_header Connection 'upgrade';
    proxy_set_header Host \$host;
    proxy_cache_bypass http_upgrade;
    ProxyPass http://localhost:80/;
  }
}

ln -s /etc/nginx/sites-available/practice.conf /etc/nginx/sites-enabled/






