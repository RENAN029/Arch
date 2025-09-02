#!/bin/bash
set -e

echo "==> Ativando firewall (GUFW)..."
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw enable

echo "==> Atualizando sistema e instalando microcódigo Intel..."
sudo pacman -Syu --noconfirm intel-ucode
sudo pacman -Scc --noconfirm
rm -rf Arch
echo "==> Script finalizado com sucesso; instale o nvm se quiser depois!"

