#!/bin/bash
echo "Installing Docker..."
sudo apt update -y
sudo apt install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker
