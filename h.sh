#!/bin/bash

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
