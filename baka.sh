#!/usr/bin/bash
#FellFreeToRecode
cyan='\e[0;36m'
green='\e[0;34m'
okegreen='\033[92m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[1;33m'
BlueF='\e[1;34m'
clear
BANNERS () {
printf "${lightgreen}==============================
         HentaiTensei
        Nhentai Grabber
${white}         -Adelittle-${lightgreen}
==============================\n
"
}
BANNERS
OPTIONS () {
printf "${red}[>]${white} Start From (6 Digit)     :${lightgreen} "
read first
printf "${red}[>]${white} Finish At (6 Digit)      :${lightgreen} "
read end
i=$first

until [ $i -gt $end ]
do
anuan=$(echo $i)
  ((i=i+1));
title=$(curl -kls "https://nhopener-api.now.sh/${anuan}/" | jq -r ".title.display" );
tag=$(curl -kls "https://nhopener-api.now.sh/${anuan}/" | grep -Po '"name":"\K.*?(?=")');
  printf "\n${white}Result From: ${lightgreen}https://nhentai.net/g/${anuan}/ \n${white}[+]Title:${lightgreen} $title \n${white}[+]Tags \n${lightgreen}$tag \n"
done
}
OPTIONS
printf "\n${white}Done\n"
