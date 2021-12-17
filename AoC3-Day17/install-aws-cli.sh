#!/bin/bash

cd /opt/
rm awscliv2.zip
echo "[+]Downloading AWS files..."
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip -qq awscliv2.zip
echo "[+]Installing AWS CLI..."
sudo ./aws/install
echo "[+]Installation Successful!!"
aws --version
