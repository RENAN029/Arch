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
    echo "1) IA"
    echo "2) Binary"
    echo "3) JaKooLit" 
    echo "4) M4" 
    echo "5) Sh1zicus"
    echo "6) HyDe"
    echo "7) Sair"
    read -p "Opção (1/2/3): " choice
    case $choice in
        1) 
            bash <(curl -s https://ii.clsty.link/get)
            break
            ;;
        2) 
            curl -fsSL -o install.sh https://raw.githubusercontent.com/BinaryHarbinger/binarydots/main/install.sh && chmod +x install.sh && ./install.sh
            break
            ;;
        3) 
            sh <(curl -L https://raw.githubusercontent.com/JaKooLit/Hyprland-Dots/main/Distro-Hyprland.sh)
            break
            ;;
        4) 
            bash <(curl -L https://raw.githubusercontent.com/mylinuxforwork/dotfiles/main/hyprland-dotfiles.dotinst)
            break
            ;;
        5) 
            bash <(curl -s "https://sh1zicus.github.io/dots-hyprland-wiki/setup.sh")
            break
            ;;
        6) 
            sudo pacman -S --needed git base-devel
            git clone --depth 1 https://github.com/HyDE-Project/HyDE ~/HyDE
            cd ~/HyDE/Scripts
            ./install.sh
            ;;
        7) 
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
