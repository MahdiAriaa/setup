#!/bin/bash

# بروزرسانی سیستم
echo "Updating system..."
sudo apt update && sudo apt upgrade -y

# نصب ابزارهای ضروری برای تست نفوذ
echo "Installing penetration testing tools..."

# نصب Nmap
echo "Installing Nmap..."
sudo apt install -y nmap

# نصب Metasploit Framework
echo "Installing Metasploit..."
sudo apt install -y wget curl
wget https://raw.githubusercontent.com/rapid7/metasploit-framework/master/msfupdate
chmod +x msfupdate
./msfupdate

# نصب Aircrack-ng (ابزار تست امنیت شبکه بی سیم)
echo "Installing Aircrack-ng..."
sudo apt install -y aircrack-ng

# نصب Wireshark (ابزار تحلیل شبکه)
echo "Installing Wireshark..."
sudo apt install -y wireshark

# نصب Burp Suite (ابزار تست امنیت وب)
echo "Installing Burp Suite..."
sudo snap install burpsuite

# نصب Hydra (ابزار brute force برای password cracking)
echo "Installing Hydra..."
sudo apt install -y hydra

# نصب John the Ripper (ابزار crack پسورد)
echo "Installing John the Ripper..."
sudo apt install -y john

# نصب Nikto (ابزار تست امنیت وب)
echo "Installing Nikto..."
sudo apt install -y nikto

# نصب Gobuster (ابزار تست دایرکتوری وب)
echo "Installing Gobuster..."
sudo apt install -y gobuster

# نصب Netcat (ابزار شبکه برای ارسال داده‌ها)
echo "Installing Netcat..."
sudo apt install -y netcat

# نصب Sqlmap (ابزار تست SQL Injection)
echo "Installing Sqlmap..."
sudo apt install -y sqlmap

# نصب Netdiscover (ابزار شناسایی دستگاه‌ها در شبکه)
echo "Installing Netdiscover..."
sudo apt install -y netdiscover

# نصب Pupy (ابزار کنترل از راه دور)
echo "Installing Pupy..."
sudo apt install -y python3-pupy

# نصب Recon-ng (ابزار جمع آوری اطلاعات)
echo "Installing Recon-ng..."
sudo apt install -y recon-ng

# نصب Gobuster (ابزار فنی برای دایرکتوری براوزینگ)
echo "Installing Gobuster..."
sudo apt install -y gobuster

# نصب wpscan (ابزار تست امنیت وردپرس)
echo "Installing WPSCAN..."
sudo apt install -y wpscan

# نصب tools دیگر مانند tcpdump، mitmproxy و...
echo "Installing additional tools..."
sudo apt install -y tcpdump mitmproxy

# نصب Kali Linux tools repository (برای نصب ابزارهای Kali در اوبونتو)
echo "Adding Kali Linux tools repository..."
echo "deb http://http.kali.org/kali kali-rolling main non-free contrib" | sudo tee /etc/apt/sources.list.d/kali.list
sudo apt update
sudo apt install -y kali-linux-top10

echo "Penetration Testing Tools installation complete!"
