#!/bin/bash
HOST_URL="$(cat /root/install_link.txt )"
# ==========================================
echo -e "Checking update..."
sleep 2

# Hapus file lama
rm -f /usr/bin/menu
rm -f /usr/bin/menun-ssh
rm -f /usr/bin/menu_pw_host
rm -f /usr/bin/menu-backup
rm -f /usr/bin/usernew
rm -f /usr/bin/backup
rm -f /usr/bin/restore
rm -f /usr/bin/menu_limit_ip_ssh
rm -f /usr/bin/menu_bot.tele.sh
rm -f /usr/bin/trialssh

# Download update
echo -e "${YELLOW}Update all repo...${NC}"

urls=(
    "https://${HOST_URL}/allmenu/menu_limit_ip_ssh.sh"
    "https://${HOST_URL}/allmenu/menu.sh"
    "https://${HOST_URL}/allmenu/menun-ssh.sh"
    "https://${HOST_URL}/allmenu/menu_pw_host.sh"
    "https://${HOST_URL}/allmenu/menu-backup.sh"
    "https://${HOST_URL}/allmenu/usernew.sh"
    "https://${HOST_URL}/backup/backup.sh"
    "https://${HOST_URL}/backup/restore.sh"
    "https://${HOST_URL}/bot/menu_bot_tele.sh"
    "https://${HOST_URL}/allmenu/trialssh.sh"
)

files=(
    "/usr/bin/menu_limit_ip_ssh"
    "/usr/bin/menu"
    "/usr/bin/menun-ssh"
    "/usr/bin/menu_pw_host"
    "/usr/bin/menu-backup"
    "/usr/bin/usernew"
    "/usr/bin/backup"
    "/usr/bin/restore"
    "/usr/bin/menu_bot_tele"
    "/usr/bin/trialssh"
)

for i in ${!urls[@]}; do
    wget -O ${files[$i]} "${urls[$i]}"
    if [[ $? -eq 0 ]]; then
        chmod +x ${files[$i]}
        echo -e "${GREEN}${files[$i]} successfully updated.${NC}"
    else
        echo -e "${RED}Failed to update ${files[$i]}${NC}"
    fi
done

# Clean up
rm -rf update-script.sh

echo -e "${BLUE}--- All scripts have been updated successfully ---${NC}"
echo -e "${GREEN}Press Enter to return to the menu...${NC}"
read -r

# Run the main menu
menu
