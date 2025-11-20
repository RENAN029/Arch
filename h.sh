set -e
echo "=== Instalador de Dots Hyprland ==="
while true; do
    echo "Escolha a dot:"
    echo "1) Dank"
    echo "2) JaKooLit" 
    echo "3) Hyde" 
    echo "4) Caelestia"
    echo "5) Ia"
    echo "6) Ax"
    exho "7) Ia2"
    echo "8) Sair"
    read -p "Opção (1/2/3/4/5/6): " choice   
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
            sudo pacman -S --needed git base-devel
            git clone --depth 1 https://github.com/HyDE-Project/HyDE ~/HyDE
            cd ~/HyDE/Scripts
            ./install.sh
            break
            ;;
        4) 
            sudo pacman -S --noconfirm fish
            git clone https://github.com/caelestia-dots/caelestia.git ~/.local/share/caelestia
            ~/.local/share/caelestia/install.fish
            break
            ;;
        5) 
            bash <(curl -s https://ii.clsty.link/get)
            break
            ;;
        6)
            curl -fsSL get.axeni.de/ax-shell | bash
            break
            ;;
        7)
            bash <(curl -s "https://sh1zicus.github.io/dots-hyprland-wiki/setup.sh")
            break
            ;;
        8) 
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
