#!/bin/bash

# Warna untuk tampilan
r='\e[31m'
g='\e[32m'
y='\e[33m'
b='\e[34m'
m='\e[35m'
c='\e[36m'
w='\e[97m'
reset='\e[0m'

# Fungsi loading animation
f1() { 
    echo -e "${c}🔍 Mencari... ${reset}"
    for i in {1..5}; do 
        echo -n "."
        sleep 0.5
    done
    echo "" 
}

# Watermark Tersembunyi
w1() {
    echo -e "${w}✨-----------------------------------------------✨${reset}"
    echo -e "${w}             🖋️ Script by: pyscodes ❤${reset}"
    echo -e "${w}✨-----------------------------------------------✨${reset}"
}

clear
w1
sleep 1

echo -e "${r}💔===============================================💔${reset}"
echo -e "${m}           💘   PROGRAM PENCARIAN CINTA AI 💘${reset}"
echo -e "${r}💔===============================================💔${reset}"
sleep 1

echo -e "${c}🔍  Mendeteksi jaringan lokal...${reset}"
sleep 1
g=$(ip route | grep default | awk '{print $3}')
echo -e "${g}📡  Gateway ditemukan : $g${reset}"
sleep 1

echo ""
echo -e "${c}💞  Memulai pencarian cinta di jaringan...${reset}"
f1

for i in {1..8}; do
    ip="192.168.1.$((RANDOM % 255))"
    echo -e "${b}📨  Menghubungi IP: $ip ...${reset}"
    sleep 1
    echo -e "${r}❌  Tidak ada cinta di sana 😔${reset}"
    echo ""
    sleep 0.6
done

echo -e "${y}💌  Menghubungi IP spesial: 127.0.0.1 (localhost)...${reset}"
sleep 1
echo -e "${g}✅  Ditemukan... Diri sendiri 🪞${reset}"
sleep 1.5
echo -e "${m}😢  Tapi ternyata masih belum mencintai diri sendiri sepenuhnya...${reset}"
sleep 2

echo ""
echo -e "${r}💔===============================================💔${reset}"
echo -e "${y}       ❗ HASIL AKHIR : CINTA TIDAK DITEMUKAN ❗${reset}"
echo -e "${r}💔===============================================💔${reset}"
sleep 1.5
echo ""
echo -e "${c}😞  Sudah sejauh ini mencari... tapi tetap sendiri.${reset}"
sleep 1
f1

echo -e "${m}💔  Selalu jadi tempat cerita, tapi tak pernah jadi akhir cerita.${reset}"
sleep 1
echo -e "${r}🖤  Mungkin aku hanyalah jeda, bukan tujuan.${reset}"
sleep 1
echo -e "${b}🥀  Atau mungkin... aku mencintai yang tak pernah melihat ke arahku.${reset}"
sleep 2
echo ""
echo -e "${y}🌧️   Tenang... hujan pun pernah merasa sendirian di langit yang luas.${reset}"
sleep 1
echo -e "${g}🧱   Tapi mungkin... suatu hari akan ada yang datang, tanpa diminta.${reset}"
sleep 1
echo -e "${c}⌛   Sampai saat itu tiba, aku akan terus berjalan... meski sendiri.${reset}"

# Menampilkan watermark lagi di akhir untuk memastikan
sleep 2
w1
