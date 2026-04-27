#!/bin/bash
HOST_URL="$(cat /root/install_link.txt )"
# ==========================================
MYIP=$(curl -sS ipv4.icanhazip.com)
red='\e[1;31m'
green='\e[0;32m'
yell='\e[1;33m'
tyblue='\e[1;36m'
NC='\e[0m'

localip=$(hostname -I | cut -d\  -f1)
hst=( `hostname` )
dart=$(cat /etc/hosts | grep -w `hostname` | awk '{print $2}')
if [[ "$hst" != "$dart" ]]; then
echo "$localip $(hostname)" >> /etc/hosts
fi
if [ -f "/root/log-install.txt" ]; then
rm -fr /root/log-install.txt
fi
mkdir -p /etc/xray
mkdir -p /etc/v2ray
touch /etc/xray/domain
touch /etc/v2ray/domain
touch /etc/xray/scdomain
touch /etc/v2ray/scdomain
mkdir -p /etc/{xray,bot,vmess,vless,trojan,shadowsocks,ssh,noobzvpns,limit,usr}
mkdir -p /etc/ssh
touch /etc/ssh/.ssh.db
echo "& plughin Account" >>/etc/ssh/.ssh.db

ln -fs /usr/share/zoneinfo/Asia/Jakarta /etc/localtime
sysctl -w net.ipv6.conf.all.disable_ipv6=1 >/dev/null 2>&1
sysctl -w net.ipv6.conf.default.disable_ipv6=1 >/dev/null 2>&1

apt install git curl -y >/dev/null 2>&1
apt install python -y >/dev/null 2>&1
echo -e "[ ${green}INFO${NC} ] Aight good ... installation file is ready"
sleep 2


mkdir -p /var/lib/scrz-prem >/dev/null 2>&1
echo "IP=" >> /var/lib/scrz-prem/ipvps.conf

#Ask for servinstall_link_url
read -p "Enter your script installation link without http:// or https:// and no '/' at end: " install_link_url
echo "${install_link_url}" > /root/install_link.txt
HOST_URL="$(cat /root/install_link.txt )"
clear

sudo at install squid -y
sudo apt install net-tools -y
sudo apt install vnstat -y
wget -q https://${HOST_URL}/tools.sh && chmod +x tools.sh && ./tools.sh
rm tools.sh
clear

clear
echo "Add Domain for vmess/vless/trojan dll"
echo " "
read -rp "Input ur domain : " -e pp
    if [ -z $pp ]; then
        echo -e "
        Nothing input for domain!
        Then a random domain will be created"
    else
        echo "$pp" > /root/scdomain
	echo "$pp" > /etc/xray/scdomain
	echo "$pp" > /etc/xray/domain
	echo "$pp" > /etc/v2ray/domain
	echo $pp > /root/domain
        echo "IP=$pp" > /var/lib/scrz-prem/ipvps.conf
    fi

clear
#install ssh ovpn
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "$green      Install SSH / WS               $NC"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
sleep 2
clear
wget -q -O ssh-vpn.sh https://${HOST_URL}/autoscript-ssh-slowdns-main/ssh-vpn.sh && chmod +x ssh-vpn.sh && ./ssh-vpn.sh
sleep 2
clear
wget https://${HOST_URL}/conf/nginx-ssl.sh && chmod +x nginx-ssl.sh && ./nginx-ssl.sh


#install ssh ovpn
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "$green      Install Websocket              $NC"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
sleep 2
clear
wget -q -O fix.sh https://${HOST_URL}/Insshws/fix.sh && chmod +x fix.sh && ./fix.sh

#exp
cd /usr/bin
wget -O xp "https://${HOST_URL}/xp.sh"
chmod +x xp
sleep 1
wget -q -O /usr/bin/notramcpu "https://${HOST_URL}/notramcpu" && chmod +x /usr/bin/notramcpu

cd

rm -f /root/ins-xray.sh
rm -f /root/insshws.sh
rm -f /root/xraymode.sh

#xray
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "$green      Install Xray              $NC"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
sleep 2
wget -q -O ins-xray.sh https://${HOST_URL}/xray/ins-xray.sh && chmod +x ins-xray.sh && ./ins-xray.sh
sleep 1
wget -q -O senmenu.sh https://${HOST_URL}/allmenu/senmenu.sh && chmod +x senmenu.sh && ./senmenu.sh
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "$green      Install slowdns              $NC"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
sleep 2
wget -q -O slowdns.sh https://${HOST_URL}/autoscript-ssh-slowdns-main/slowdns.sh && chmod +x slowdns.sh && ./slowdns.sh
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "$green      Install openvpn              $NC"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
sleep 2
wget -q -O open-vpn.sh https://${HOST_URL}/autoscript-ssh-slowdns-main/open-vpn.sh && chmod 777 open-vpn.sh && ./open-vpn.sh
sleep2
# Tambahkan setelah bagian install tool dasar
# Tambahkan ini untuk install pv dan dialog
apt install git curl -y >/dev/null 2>&1
apt install python -y >/dev/null 2>&1
apt install pv dialog -y >/dev/null 2>&1
echo -e "[ ${green}INFO${NC} ] Aight good ... installation file is ready"

# Instalasi Limit IP SSH TIAP USER
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "$green      Install Limit IP SSH            $NC"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"

#menyimpan limit IP per user
mkdir -p /etc/klmpk/limit/ssh/ip

# pasang menu limit ssh
wget -O /usr/bin/menu_limit_ip_ssh "https://${HOST_URL}/allmenu/menu_limit_ip_ssh.sh"
chmod +x /usr/bin/menu_limit_ip_ssh

# Download script limitssh-ip.sh
echo "Mengunduh script limitssh-ip..."
wget -O /usr/local/sbin/limitssh-ip https://${HOST_URL}/limit/limitssh-ip
chmod +x /usr/local/sbin/limitssh-ip

# Download script cekssh.sh (digunakan untuk cek login pengguna SSH secara manual, dan ini juga mencakup pengecekan pengguna yang login melalui Dropbear dan OpenSSH serta beberapa VPN (OpenVPN TCP dan UDP).)
echo "Mengunduh script cekssh..."
wget -O /usr/local/sbin/cekssh https://${HOST_URL}/limit/cekssh
chmod +x /usr/local/sbin/cekssh

cd
# Mengunduh dan mengatur limit.sh
wget https://${HOST_URL}/limit/limit.sh -O limit.sh
chmod +x limit.sh
./limit.sh

sleep 2

clear

#install remove log
echo "0 5 * * * root reboot" >> /etc/crontab
echo "* * * * * root clog" >> /etc/crontab
echo "59 * * * * root pkill 'menu'" >> /etc/crontab
echo "0 1 * * * root xp" >> /etc/crontab
echo "*/5 * * * * root notramcpu" >> /etc/crontab
service cron restart
clear
org=$(curl -s https://ipapi.co/org )
echo "$org" > /root/.isp

cat> /root/.profile << END
if [ "$BASH" ]; then
if [ -f ~/.bashrc ]; then
. ~/.bashrc
fi
fi
mesg n || true
clear
menu
END
chmod 644 /root/.profile
if [ -f "/root/log-install.txt" ]; then
rm -fr /root/log-install.txt
fi
cd
echo "3.0.0" > versi
clear
rm -f ins-xray.sh
rm -f senmenu.sh
rm -f setupku.sh
rm -f xraymode.sh
rm -f slowdns.sh

echo "===============-[ Kang Hory VPN PREMIUM ]-================"
echo ""
echo "------------------------------------------------------------"
echo ""
echo "   >>> Service & Port"  | tee -a log-install.txt
echo "   - OpenSSH                 : 22, 53, 2222, 2269"  | tee -a log-install.txt
echo "   - SSH Websocket           : 80,8880,8080" | tee -a log-install.txt
echo "   - SSH SSL Websocket       : 443" | tee -a log-install.txt
echo "   - Stunnel5                : 222, 777" | tee -a log-install.txt
echo "   - Dropbear                : 109, 143" | tee -a log-install.txt
echo "   - Badvpn                  : 7100-7300" | tee -a log-install.txt
echo "   - Nginx                   : 81" | tee -a log-install.txt
echo "   - XRAY  Vmess TLS         : 443" | tee -a log-install.txt
echo "   - XRAY  Vmess None TLS    : 80" | tee -a log-install.txt
echo "   - XRAY  Vless TLS         : 443" | tee -a log-install.txt
echo "   - XRAY  Vless None TLS    : 80" | tee -a log-install.txt
echo "   - Trojan GRPC             : 443" | tee -a log-install.txt
echo "   - Trojan WS               : 443" | tee -a log-install.txt
echo "   - Trojan GO               : 443" | tee -a log-install.txt
echo "   - Sodosok WS/GRPC         : 443" | tee -a log-install.txt
echo "   - slowdns                 : 443,80,8080,53,5300" | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Server Information & Other Features"  | tee -a log-install.txt
echo "   - Timezone                : Asia/Jakarta (GMT +7)"  | tee -a log-install.txt
echo "   - Fail2Ban                : [ON]"  | tee -a log-install.txt
echo "   - Dflate                  : [ON]"  | tee -a log-install.txt
echo "   - IPtables                : [ON]"  | tee -a log-install.txt
echo "   - Auto-Reboot             : [ON]"  | tee -a log-install.txt
echo "   - IPv6                    : [OFF]"  | tee -a log-install.txt
echo "   - Autobackup Data" | tee -a log-install.txt
echo "   - AutoKill Multi Login User" | tee -a log-install.txt
echo "   - Auto Delete Expired Account" | tee -a log-install.txt
echo "   - Fully automatic script" | tee -a log-install.txt
echo "   - VPS settings" | tee -a log-install.txt
echo "   - Admin Control" | tee -a log-install.txt
echo "   - Change port" | tee -a log-install.txt
echo "   - Restore Data" | tee -a log-install.txt
echo "   - Full Orders For Various Services" | tee -a log-install.txt
echo ""
echo ""
echo "------------------------------------------------------------"
echo ""
echo "===============-[ Script Credit By kanghoryVPN ]-==============="
echo -e ""
echo ""
echo "" | tee -a log-install.txt
echo "ADIOS"
sleep 1
echo -ne "[ ${yell}WARNING${NC} ] Do you want to reboot now ? (y/n)? "
read answer
if [ "$answer" == "${answer#[Yy]}" ] ;then
exit 0
else
reboot
fi
