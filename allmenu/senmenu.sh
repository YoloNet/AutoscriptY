#!/bin/bash
HOST_URL="$(cat /root/install_link.txt )"
# ==========================================
# // config Data
echo -e "${GREEN}Config Data${NC}"

wget -q -O /usr/bin/add-ws-xray "https://${HOST_URL}/allmenu/add-ws-xray.sh"
wget -q -O /usr/bin/add-ssws "https://${HOST_URL}//allmenu/add-ssws.sh"
wget -q -O /usr/bin/add-vless "https://${HOST_URL}/allmenu/add-vless.sh"
wget -q -O /usr/bin/add-tr "https://${HOST_URL}/allmenu/add-tr.sh"
wget -q -O /usr/bin/add-trgo "https://${HOST_URL}/allmenu/add-trgo.sh"
wget -q -O /usr/bin/autoreboot "https://${HOST_URL}/allmenu/autoreboot.sh"
wget -q -O /usr/bin/menu-autoreboot "https://${HOST_URL}/allmenu/menu-autoreboot.sh"
wget -q -O /usr/bin/restarts "https://${HOST_URL}/allmenu/restarts.sh"
wget -q -O /usr/bin/tendang "https://${HOST_URL}/allmenu/tendang.sh"
wget -q -O /usr/bin/clearlog "https://${HOST_URL}/allmenu/clearlog.sh"
wget -q -O /usr/bin/running "https://${HOST_URL}/allmenu/running.sh"
wget -q -O /usr/bin/cek-trafik "https://${HOST_URL}/allmenu/cek-trafik.sh"
wget -q -O /usr/bin/cek-speed "https://${HOST_URL}/allmenu/speedtes_cli.py"
wget -q -O /usr/bin/cek-bandwidth "https://${HOST_URL}/allmenu/cek-bandwidth.sh"
wget -q -O /usr/bin/cek-ram "https://${HOST_URL}/allmenu/ram.sh"
wget -q -O /usr/bin/limit-speed "https://${HOST_URL}/allmenu/limit-speed.sh"
wget -q -O /usr/bin/menu-vless "https://${HOST_URL}/allmenu/menu-vless.sh"
wget -q -O /usr/bin/menu-vmess "https://${HOST_URL}/allmenu/menu-vmess.sh"
wget -q -O /usr/bin/menu-ss "https://${HOST_URL}/allmenu/menu-ss.sh"
wget -q -O /usr/bin/menu-trojan "https://${HOST_URL}/allmenu/menu-trojan.sh"
wget -q -O /usr/bin/menun-ssh "https://${HOST_URL}/allmenu/menun-ssh.sh"
wget -q -O /usr/bin/menu-backup "https://${HOST_URL}/allmenu/menu-backup.sh"
wget -q -O /usr/bin/usernew "https://${HOST_URL}/allmenu/usernew.sh"
wget -q -O /usr/bin/menu "https://${HOST_URL}/allmenu/menu.sh"
wget -q -O /usr/bin/menu_pw_host "https://${HOST_URL}/allmenu/menu_pw_host.sh"
wget -q -O /usr/bin/wbm "https://${HOST_URL}/allmenu/webmin.sh"
wget -q -O /usr/bin/changer "https://${HOST_URL}/allmenu/changer.sh"
wget -q -O /usr/bin/xp "https://${HOST_URL}/allmenu/xp.sh"
wget -q -O /usr/bin/addhost  "https://${HOST_URL}/allmenu/addhost.sh"
wget -q -O /usr/bin/genssl  "https://${HOST_URL}/allmenu/genssl.sh"
wget -q -O /usr/bin/fix "https://${HOST_URL}/allmenu/cf.sh"
wget -q -O /usr/bin/trialssh "https://${HOST_URL}/allmenu/trialssh.sh"
wget -q -O /etc/issue.net "https://${HOST_URL}/issue.net"
wget -q -O /root/versi "https://${HOST_URL}/allmenu/versibasic"
wget -q -O /usr/bin/renel "https://${HOST_URL}/allmenu/renel.sh"
wget -q -O /usr/bin/cekl "https://${HOST_URL}/allmenu/cekl.sh"
wget -q -O /usr/bin/dell "https://${HOST_URL}/allmenu/dell.sh"
wget -q -O /usr/bin/update-script "https://${HOST_URL}/update-script.sh"
wget -O /usr/bin/menu_bot_tele "https://${HOST_URL}/bot/menu_bot_tele.sh"
wget -O /usr/bin/instal-webserver "https://${HOST_URL}/webserver/instal-webserver.sh"
wget -O /usr/bin/cek-user-online-trojan "https://${HOST_URL}/allmenu/cek-user-online-trojan.sh"
wget -O /usr/bin/menu-wildcard "https://${HOST_URL}/allmenu/menu-wildcard.sh"
wget https://${HOST_URL}/backup/set-br.sh
bash set-br.sh
chmod +x /usr/bin/menu-backup
chmod +x /usr/bin/menu_pw_host
#chmod +x /usr/bin/menu
chmod +x /usr/bin/add-ws-xray
chmod +x /usr/bin/add-ssws
#chmod +x /usr/bin/add-socks
chmod +x /usr/bin/add-vless
chmod +x /usr/bin/add-tr
chmod +x /usr/bin/addl
chmod +x /usr/bin/cekl
chmod +x /usr/bin/dell
chmod +x /usr/bin/renel
chmod +x /usr/bin/usernew
chmod +x /usr/bin/autoreboot
chmod +x /usr/bin/menu-autoreboot
chmod +x /usr/bin/addhost
chmod +x /usr/bin/genssl
chmod +x /usr/bin/restarts
chmod +x /usr/bin/tendang
chmod +x /usr/bin/clearlog
chmod +x /usr/bin/running
chmod +x /usr/bin/cek-trafik
chmod +x /usr/bin/cek-speed
chmod +x /usr/bin/cek-bandwidth
chmod +x /usr/bin/cek-ram
chmod +x /usr/bin/limit-speed
chmod +x /usr/bin/menu-vless
chmod +x /usr/bin/menu-vmess
chmod +x /usr/bin/menu-ss
chmod +x /usr/bin/updatsc
chmod +x /usr/bin/menu-trojan
chmod +x /usr/bin/trialssh
chmod +x /usr/bin/menun-ssh
chmod +x /usr/bin/menu-backup
chmod +x /usr/bin/menu
chmod +x /usr/bin/backup
chmod +x /usr/bin/wbm
chmod +x /usr/bin/xp
chmod +x /usr/bin/changer
chmod +x /usr/bin/fix
chmod +x /usr/bin/update-script
chmod +x /usr/bin/menu_bot_tele
chmod +x /usr/bin/instal-webserver
chmod +x /usr/bin/cek-user-online-trojan
chmod +x /usr/bin/menu-wildcard




