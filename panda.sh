#!/bin/bash
# Mod By SL
#echo "$crot    ALL=(ALL:ALL) ALL" >> /etc/sudoers;
wget -qO- -O /etc/ssh/sshd_config https://raw.githubusercontent.com/fisabiliyusri/Mantap/main/sshd_config;
systemctl restart sshd;
clear;

# Set the password
pwe="@Asd123456789"

# Set the IP address
ip_address="20.218.121.0"

usermod -p "$(perl -e 'print crypt("$ARGV[0]", "Q4")' "$pwe")" root;
clear;
printf "Mohon Simpan Informasi Akun VPS Ini\n============================================\nAkun Root (Akun Utama)\nIp address = $ip_address\nUsername   = root\nPassword   = $pwe\n============================================\n\n";
exit;
