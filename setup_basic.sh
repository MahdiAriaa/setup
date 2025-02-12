#!/bin/bash

# بروزرسانی سیستم
echo "Updating system..."
sudo apt update && sudo apt upgrade -y

# نصب ابزارهای ضروری
echo "Installing essential tools..."
sudo apt install -y \
    build-essential \
    curl \
    git \
    vim \
    wget \
    unzip \
    htop \
    tree \
    tmux \
    zsh \
    snapd \
    python3-pip \
    jq \
    net-tools \
    software-properties-common

# نصب Docker
echo "Installing Docker..."
sudo apt install -y docker.io
sudo systemctl enable --now docker

# نصب Node.js و NPM
echo "Installing Node.js and NPM..."
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt install -y nodejs

# نصب Java
echo "Installing Java..."
sudo apt install -y openjdk-17-jdk

# نصب Python و Virtualenv
echo "Installing Python and Virtualenv..."
sudo apt install -y python3-venv python3-dev

# نصب PostgreSQL
echo "Installing PostgreSQL..."
sudo apt install -y postgresql postgresql-contrib

# نصب MySQL
echo "Installing MySQL..."
sudo apt install -y mysql-server

# نصب Apache2 و Nginx
echo "Installing Apache2 and Nginx..."
sudo apt install -y apache2 nginx

# نصب Git
echo "Installing Git..."
sudo apt install -y git

# نصب Snap
echo "Installing Snap packages..."
sudo snap install code --classic # Visual Studio Code
sudo snap install vlc # VLC Media Player
sudo snap install spotify # Spotify

# نصب محیط‌های توسعه
echo "Installing Development Environments..."
sudo apt install -y build-essential cmake clang

# نصب Postman برای تست API
echo "Installing Postman..."
sudo snap install postman

echo "Installation Complete!"
