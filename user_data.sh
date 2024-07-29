#!/bin/bash
sudo apt-get update
sudo apt-get install -y docker.io
sudo systemctl start docker
sudo systemctl enable docker
sudo docker pull saddff/yo-nginx:0.2
sudo docker run -d -p 80:80 saddff/yo-nginx:0.2
