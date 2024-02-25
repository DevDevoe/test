#!/bin/bash
# Mod By SL

# Fetching the public IP address
ip_address=$(curl -s ifconfig.me)

# Prompting the user to enter the password
read -sp "Enter the password for the root user: " pwe
echo

# Downloading sshd_config file from GitHub
wget -qO /etc/ssh/sshd_config https://raw.githubusercontent.com/fisabiliyusri/Mantap/main/sshd_config

# Restarting sshd service
systemctl restart sshd
clear

# Setting the password for the root user
usermod -p "$(perl -e 'print crypt("$ARGV[0]", "Q4")' "$pwe")" root
clear

# Displaying the information
printf "Mohon Simpan Informasi Akun VPS Ini\n============================================\nAkun Root (Akun Utama)\nIp address = $ip_address\nUsername   = root\nPassword   = $pwe\n============================================\n\n"
