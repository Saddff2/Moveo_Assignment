#!/bin/bash
sudo apt-get update
# Installing Docker
sudo apt-get install -y docker.io
# Starting Docker
sudo systemctl start docker
sudo systemctl enable docker
sudo docker pull saddff/yo-nginx:0.2
sudo docker run -d -p 80:80 --restart=unless-stopped saddff/yo-nginx:0.2
# Check if container running properly
if ! curl -s http://localhost/; then
    echo "Nginx server error, check logs."
    sudo docker logs nginx > /var/log/nginx_startup_logs.txt
else
    echo "Nginx is active and serving content."
fi