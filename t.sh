#!/bin/bash
set -e

echo "==> Atualizando sistema e instalando microcódigo Intel..."
sudo pacman -Scc --noconfirm
echo "==> Script finalizado com sucesso; instale o nvm se quiser depois!"
cd ..
rm -rf Arch
