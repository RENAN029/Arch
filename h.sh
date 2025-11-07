set -e
sudo pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
sudo pacman-key --lsign-key 3056513887B78AEB
sudo pacman -U --noconfirm "https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst"
sudo pacman -U --noconfirm "https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst"
echo -e "\n[chaotic-aur]\nInclude = /etc/pacman.d/chaotic-mirrorlist" | sudo tee -a /etc/pacman.conf
sudo pacman -Syu --noconfirm 
sudo pacman -S --noconfirm nvidia-open intel-ucode ufw fwupd gamemode fuse apparmor flatpak earlyoom
flatpak install -y flathub io.github.kolunmi.Bazaar
systemctl enable apparmor earlyoom
sudo pacman -Scc --noconfirm

echo "=== Instalador de Dots Hyprland ==="
while true; do
    echo "Escolha a dot:"
    echo "1) Dank"
    echo "2) JaKooLit" 
    echo "3) M4" 
    echo "4) Caelestia"
    echo "5) HyDe"
    echo "6) Sair"
    read -p "Opção (1/2/3): " choice
    case $choice in
        1) 
            curl -fsSL https://install.danklinux.com | sh
            break
            ;;
        2) 
            sh <(curl -L https://raw.githubusercontent.com/JaKooLit/Hyprland-Dots/main/Distro-Hyprland.sh)
            break
            ;;
        3) 
            bash <(curl -L https://raw.githubusercontent.com/mylinuxforwork/dotfiles/main/hyprland-dotfiles.dotinst)
            break
            ;;
        4) 
            sudo pacman -S --noconfirm yay
            yay --noconfirm caelestia-shell
            break
            ;;
        5) 
            sudo pacman -S --needed git base-devel
            git clone --depth 1 https://github.com/HyDE-Project/HyDE ~/HyDE
            cd ~/HyDE/Scripts
            ./install.sh
            ;;
        6) 
            echo "Saindo..."
            exit 0
            ;;
        *) 
            echo "Opção inválida! Tente novamente."
            echo ""
            ;;
    esac
done

cd ..
rm -rf Arch
echo "Pasta Arch removida!"
