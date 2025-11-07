#!/bin/bash
sudo pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
sudo pacman-key --lsign-key 3056513887B78AEB
sudo pacman -U --noconfirm "https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst"
sudo pacman -U --noconfirm "https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst"
sudo sed -i 's/^#Color/Color/' /etc/pacman.conf
sudo sed -i '/Color/a ILoveCandy' /etc/pacman.conf
sudo sed -i '/^ParallelDownloads/d' /etc/pacman.conf
sudo sed -i '/ILoveCandy/a ParallelDownloads = 15' /etc/pacman.conf
echo -e "\n[chaotic-aur]\nInclude = /etc/pacman.d/chaotic-mirrorlist" | sudo tee -a /etc/pacman.conf
sudo pacman -S --noconfirm nvidia-open intel-ucode ufw fwupd gamemode fuse apparmor flatpak earlyoom
systemctl enable apparmor earlyoom

flatpak install flathub io.github.kolunmi.Bazaar
echo "=== Instalador de Dots Hyprland ==="

while true; do
    echo "Escolha a dot:"
    echo "1) ii.clsty.link"
    echo "2) JaKooLit" 
    echo "3) Sair"
    read -p "Opção (1/2/3): " choice

    case $choice in
        1) 
            bash <(curl -s https://ii.clsty.link/get)
            break
            ;;
        2) 
            sh <(curl -L https://raw.githubusercontent.com/JaKooLit/Hyprland-Dots/main/Distro-Hyprland.sh)
            break
            ;;
        3) 
            echo "Saindo..."
            exit 0
            ;;
        *) 
            echo "Opção inválida! Tente novamente."
            echo ""
            ;;
    esac
done

# Auto-remoção
cd ..
rm -rf Arch
echo "Pasta Arch removida!"
