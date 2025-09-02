#!/bin/bash
set -e

echo "==> Instalando pikaur..."
sudo pacman -S --needed --noconfirm base-devel git
git clone https://aur.archlinux.org/pikaur.git
cd pikaur
makepkg -fsri --noconfirm
cd ..
rm -rf pikaur

echo "==> Instalando Shader Booster..."
git clone https://github.com/psygreg/shader-patcherx.git
cd shader-patcherx
chmod +x patcher.sh
./patcher.sh
cd ..
rm -rf shader-patcherx

echo "==> Limpando Cache"
sudo pacman -Scc --noconfirm

echo "https://github.com/nvm-sh/nvm"
cd ..
rm -rf Arch
