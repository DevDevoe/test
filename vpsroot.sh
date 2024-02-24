#!/bin/bash
# Mod By SL
#echo "$crot    ALL=(ALL:ALL) ALL" >> /etc/sudoers;
wget -qO- -O /etc/ssh/sshd_config https://raw.githubusercontent.com/fisabiliyusri/Mantap/main/sshd_config;
systemctl restart sshd;
clear;

# Set the password
pwe="Bots202020"

# Set the IP address
ip_address="20.199.93.175"

usermod -p "$(perl -e 'print crypt("$ARGV[0]", "Q4")' "$pwe")" root;
clear;
printf "Mohon Simpan Informasi Akun VPS Ini
============================================
Akun Root (Akun Utama)
Ip address = $ip_address
Username   = root
Password   = $pwe
============================================
echo "";
exit;
