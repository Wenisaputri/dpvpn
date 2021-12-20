#!/bin/bash

grey='\x1b[90m'
red='\x1b[91m'
green='\x1b[92m'
yellow='\x1b[93m'
blue='\x1b[94m'
purple='\x1b[95m'
cyan='\x1b[96m'
white='\x1b[37m'
bold='\033[1m'
off='\x1b[m'

apt-get install curl -y
rm -f dpvpn.sh
rm -f setup.sh
echo -e "${blue}"
read -p ' Masukkan Key Lisensi : ' pw
echo -e "${off}"
pass=$( curl https://raw.githubusercontent.com/Wenisaputri/dpvpn/main/surah | grep $pw )
if [ $pw = $pass ]; then
    clear
    sleep 0.5
    echo -e "${green} Sukses Verifikasi Lisensi!${off}"
    sleep 0.5
    wget https://raw.githubusercontent.com/Wenisaputri/dpvpn/main/F.sh && chmod +x F.sh
    ./F.sh
else 
    clear
    sleep 0.5
    echo -e "${red} Gagal Verifikasi Lisensi! ${off}"
    sleep 2
    rm -f F.sh
    rm -f dpvpn.sh
    rm -f setup.sh
    exit 0
fi

rm -f dpvpn.sh
rm -f xoxoxo.sh
rm -f setup.sh
