#!/bin/bash

# check if root
if [ $EUID -ne 0 ]; then
    echo "You need to run this script with sudo"
    exit
fi

# check if apt exists
if ! command -v apt > /dev/null; then
    echo "apt is not available on this system"
    exit
fi

# tell user what is happening
echo "This script will install AWS CLI"

read -p "Continue? (y/n): " answer

if [ "$answer" != "y" ]; then
    echo "Stopping script"
    exit
fi

# check if aws already exists
if command -v aws > /dev/null; then
    echo "aws command already exists. Cannot install."
    exit
fi

# install stuff
apt update -y > /dev/null
apt install -y unzip curl > /dev/null

# download aws cli
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" > /dev/null

# unzip
unzip awscliv2.zip > /dev/null

# install
./aws/install > /dev/null

# cleanup
rm -rf aws awscliv2.zip

echo "Install finished"
echo "Try running: aws --version"
