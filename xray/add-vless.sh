#!/bin/bash
Green="\e[92;1m"
RED="\033[31m"
YELLOW="\033[33m"
BLUE="\033[36m"
FONT="\033[0m"
GREENBG="\033[42;37m"
REDBG="\033[41;37m"
OK="${Green}--->${FONT}"
ERROR="${RED}[ERROR]${FONT}"
GRAY="\e[1;30m"
NC='\e[0m'
red='\e[1;31m'
green='\e[0;32m'
DF='\e[39m'
Bold='\e[1m'
Blink='\e[5m'
yell='\e[33m'
red='\e[31m'
green='\e[32m'
blue='\e[34m'
PURPLE='\e[35m'
cyan='\e[36m'
Lred='\e[91m'
Lgreen='\e[92m'
Lyellow='\e[93m'
NC='\e[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
LIGHT='\033[0;37m'
grenbo="\e[92;1m"
red() { echo -e "\\033[32;1m${*}\\033[0m"; }
# Getting
AKUN="AKUN SSH"
TIMES="10"
CHATID="-922222061"
KEY="6383900821:AAGrdOhs_cJ9ILZUUofrrfHyQLK2r0yMkcU"
URL="https://api.telegram.org/bot$KEY/sendMessage"
hariini=`date -d "0 days" +"%Y-%m-%d"`
clear
#IZIN SCRIPT
MYIP=$(curl -sS ipv4.icanhazip.com)
echo -e "\e[32mloading...\e[0m"
clear
# Valid Script
ipsaya=$(wget -qO- ipinfo.io/ip)
data_server=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
date_list=$(date +"%Y-%m-%d" -d "$data_server")
data_ip="https://raw.githubusercontent.com/GeKaStore/izin/main/izin"
checking_sc() {
  useexp=$(wget -qO- $data_ip | grep $ipsaya | awk '{print $3}')
  if [[ $date_list < $useexp ]]; then
    echo -ne
  else
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    echo -e "\033[42m          404 NOT FOUND AUTOSCRIPT          \033[0m"
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    echo -e ""
    echo -e "            ${RED}PERMISSION DENIED !${NC}"
    echo -e "   \033[0;33mYour VPS${NC} $ipsaya \033[0;33mHas been Banned${NC}"
    echo -e "     \033[0;33mBuy access permissions for scripts${NC}"
    echo -e "             \033[0;33mContact Admin :${NC}"
    echo -e "      \033[0;36mTelegram${NC} t.me/WuzzSTORE1ove"
    echo -e "      ${GREEN}WhatsApp${NC} wa.me/6287760204418"
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    exit
  fi
}
checking_sc
echo -e "\e[32mloading...\e[0m"
clear

domain=$(cat /etc/xray/domain)
clear
until [[ $user =~ ^[a-zA-Z0-9_]+$ && ${CLIENT_EXISTS} == '0' ]]; do
  echo -e "\033[1;93m◇━━━━━━━━━━━━━━━━━◇\033[0m"
  echo -e " CREATE VLESS ACCOUNT           "
  echo -e "\033[1;93m◇━━━━━━━━━━━━━━━━━◇\033[0m"

  read -rp "User: " -e user
  CLIENT_EXISTS=$(grep -w $user /etc/xray/config.json | wc -l)

  if [[ ${CLIENT_EXISTS} == '1' ]]; then
    clear
  echo -e "\033[1;93m◇━━━━━━━━━━━━━━━━━◇\033[0m"
  echo -e " CREATE VLESS ACCOUNT           "
  echo -e "\033[1;93m◇━━━━━━━━━━━━━━━━━◇\033[0m"
    echo ""
    echo "A client with the specified name was already created, please choose another name."
    echo ""
    echo -e "\033[0;34m◇━━━━━━━━━━━━━━━━━◇\033[0m"
    read -n 1 -s -r -p "Press any key to back on menu"
    menu
  fi
done
uuid=$(cat /proc/sys/kernel/random/uuid)
read -p "Expired (days): " masaaktif
read -p "Limit User (GB): " Quota
tgl=$(date -d "$masaaktif days" +"%d")
bln=$(date -d "$masaaktif days" +"%b")
thn=$(date -d "$masaaktif days" +"%Y")
expe="$tgl $bln, $thn"
tgl2=$(date +"%d")
bln2=$(date +"%b")
thn2=$(date +"%Y")
tnggl="$tgl2 $bln2, $thn2"
exp=$(date -d "$masaaktif days" +"%Y-%m-%d")
sed -i '/#vless$/a\#& '"$user $exp"'\
},{"id": "'""$uuid""'","email": "'""$user""'"' /etc/xray/config.json
sed -i '/#vlessgrpc$/a\#& '"$user $exp"'\
},{"id": "'""$uuid""'","email": "'""$user""'"' /etc/xray/config.json

vlesslink1="vless://${uuid}@${domain}:443?path=/vless&security=tls&encryption=none&type=ws#${user}"
vlesslink2="vless://${uuid}@${domain}:80?path=/vless&encryption=none&type=ws#${user}"
vlesslink3="vless://${uuid}@${domain}:443?mode=gun&security=tls&encryption=none&type=grpc&serviceName=vless-grpc&sni=${domain}#${user}"
if [ ! -e /etc/vless ]; then
  mkdir -p /etc/vless
fi

if [ -z ${Quota} ]; then
  Quota="0"
fi

c=$(echo "${Quota}" | sed 's/[^0-9]*//g')
d=$((${c} * 1024 * 1024 * 1024))

if [[ ${c} != "0" ]]; then
  echo "${d}" >/etc/vless/${user}
fi
DATADB=$(cat /etc/vless/.vless.db | grep "^#vl#" | grep -w "${user}" | awk '{print $2}')
if [[ "${DATADB}" != '' ]]; then
  sed -i "/\b${user}\b/d" /etc/vless/.vless.db
fi
echo "### ${user} ${exp} ${uuid} ${Quota}" >>/etc/vless/.vless.db
clear
cat >/var/www/html/vless-$user.txt <<-END

◇━━━━━━━━━━━━━━━━━◇
  A S U W  P R O J E C T 
◇━━━━━━━━━━━━━━━━━◇

◇━━━━━━━━━━━━━━━━━◇
# Format Vless WS TLS

- name: Vless-$user-WS TLS
  server: ${domain}
  port: 443
  type: vless
  uuid: ${uuid}
  cipher: auto
  tls: true
  skip-cert-verify: true
  servername: ${domain}
  network: ws
  ws-opts:
    path: /vless
    headers:
      Host: ${domain}

# Format Vless WS Non TLS

- name: Vless-$user-WS (CDN) Non TLS
  server: ${domain}
  port: 80
  type: vless
  uuid: ${uuid}
  cipher: auto
  tls: false
  skip-cert-verify: false
  servername: ${domain}
  network: ws
  ws-opts:
    path: /vless
    headers:
      Host: ${domain}
  udp: true

# Format Vless gRPC (SNI)

- name: Vless-$user-gRPC (SNI)
  server: ${domain}
  port: 443
  type: vless
  uuid: ${uuid}
  cipher: auto
  tls: true
  skip-cert-verify: true
  servername: ${domain}
  network: grpc
  grpc-opts:
  grpc-mode: gun
    grpc-service-name: vless-grpc

◇━━━━━━━━━━━━━━━━━◇
Link Akun Vless 
◇━━━━━━━━━━━━━━━━━◇
Link TLS      : 
${vlesslink1}
◇━━━━━━━━━━━━━━━━━◇
Link none TLS : 
${vlesslink2}
◇━━━━━━━━━━━━━━━━━◇
Link GRPC     : 
${vlesslink3}
◇━━━━━━━━━━━━━━━━━◇


END

systemctl restart xray
systemctl restart nginx
clear
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" | tee -a /etc/log-create-user.log
echo -e "\E[40;1;37m        Xray/Vless Account        \E[0m" | tee -a /etc/log-create-user.log
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" | tee -a /etc/log-create-user.log
echo -e "Remarks        : ${user}" | tee -a /etc/log-create-user.log
echo -e "Domain         : ${domain}" | tee -a /etc/log-create-user.log
echo -e "Location        : $CITY" | tee -a /etc/log-create-user.log
echo -e "User Quota      : ${Quota} GB" | tee -a /etc/log-create-user.log
echo -e "port TLS       : $tls" | tee -a /etc/log-create-user.log
echo -e "port none TLS  : $none" | tee -a /etc/log-create-user.log
echo -e "id             : ${uuid}" | tee -a /etc/log-create-user.log
echo -e "Encryption     : none" | tee -a /etc/log-create-user.log
echo -e "Network        : ws" | tee -a /etc/log-create-user.log
echo -e "Path           : /vless" | tee -a /etc/log-create-user.log
echo -e "Path           : vless-grpc" | tee -a /etc/log-create-user.log
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" | tee -a /etc/log-create-user.log
echo -e "Link TLS       : ${vlesslink1}" | tee -a /etc/log-create-user.log
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" | tee -a /etc/log-create-user.log
echo -e "Link none TLS  : ${vlesslink2}" | tee -a /etc/log-create-user.log
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" | tee -a /etc/log-create-user.log
echo -e "Link GRPC      : ${vlesslink3}" | tee -a /etc/log-create-user.log
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" | tee -a /etc/log-create-user.log
echo -e "Aktif Selama     : $masaaktif Hari"
echo -e "Dibuat Pada      : $tnggl"
echo -e "Berakhir Pada    : $expe"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" | tee -a /etc/log-create-user.log
echo "" | tee -a /etc/log-create-user.log
