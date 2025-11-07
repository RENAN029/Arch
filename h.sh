#!/bin/bash

# Cores
GREEN="\e[32m"
YELLOW="\e[33m"
RED="\e[31m"
RESET="\e[0m"

# Função para verificar conexão
check_internet() {
    echo -e "${YELLOW}Verificando conexão com a internet...${RESET}"
    if ! ping -c 1 archlinux.org &>/dev/null; then
        echo -e "${RED}Sem conexão com a internet. Verifique e tente novamente.${RESET}"
        exit 1
    fi
}

# Função para mostrar título
title() {
    clear
    echo -e "${GREEN}"
    echo "====================================="
    echo "      Hyprland Dots Installer        "
    echo "====================================="
    echo -e "${RESET}"
}

# Menu de opções
menu() {
    title
    echo "Escolha a dot que deseja instalar:"
    echo
    PS3="Digite o número da opção desejada: "

    options=(
        "CLSTY Hyprland (bash <(curl -s https://ii.clsty.link/get))"
        "JaKooLit Hyprland (sh <(curl -L https://raw.githubusercontent.com/JaKooLit/Hyprland-Dots/main/Distro-Hyprland.sh))"
        "Sair"
    )

    select opt in "${options[@]}"; do
        case $REPLY in
            1)
                echo -e "${YELLOW}Instalando CLSTY Hyprland...${RESET}"
                bash <(curl -s https://ii.clsty.link/get)
                break
                ;;
            2)
                echo -e "${YELLOW}Instalando JaKooLit Hyprland...${RESET}"
                sh <(curl -L https://raw.githubusercontent.com/JaKooLit/Hyprland-Dots/main/Distro-Hyprland.sh)
                break
                ;;
            3)
                echo "Saindo..."
                exit 0
                ;;
            *)
                echo -e "${RED}Opção inválida!${RESET}"
                ;;
        esac
    done
}
