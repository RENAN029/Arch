#!/bin/bash
set -e

echo "==> Removendo pacotes GNOME indesejados..."
sudo pacman -Rsnu --noconfirm gnome-extra gnome-music gnome-maps gnome-tour gnome-weather gnome-contacts gnome-font-viewer epiphany  htop vim

echo "==> Instalando pacotes multimídia..."
sudo pacman -S --noc0onfirm ffmpeg gst-plugins-ugly gst-plugins-good gst-plugins-base gst-plugins-bad gst-libav gstreamer

echo "==> Instalando pacotes básicos..."
sudo pacman -S --noconfirm nano git fastfetch gufw noto-fonts-cjk fwupd gnome-tweaks flatpak intel-ucode yt-dlp btop

echo "==> Instalando LucidGlyph..."
git clone https://github.com/maximilionus/lucidglyph.git
cd lucidglyph
sudo ./lucidglyph.sh install
cd ..
rm -rf lucidglyph

echo "==> Ativando firewall (GUFW)..."
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo systemctl enable ufw
sudo ufw enable

echo "==> Instalando Chaotic-AUR..."
sudo pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
sudo pacman-key --lsign-key 3056513887B78AEB
sudo pacman -U --noconfirm "https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst"
sudo pacman -U --noconfirm "https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst"

echo "==> Configurando /etc/pacman.conf..."
sudo sed -i 's/^#Color/Color/' /etc/pacman.conf
sudo sed -i '/Color/a ILoveCandy' /etc/pacman.conf
sudo sed -i '/^ParallelDownloads/d' /etc/pacman.conf
sudo sed -i '/ILoveCandy/a ParallelDownloads = 15' /etc/pacman.conf
echo -e "\n[chaotic-aur]\nInclude = /etc/pacman.d/chaotic-mirrorlist" | sudo tee -a /etc/pacman.conf

echo "==> Atualizando sistema e instalando microcódigo Intel..."
sudo pacman -Syu --noconfirm 
sudo pacman -Scc --noconfirm

echo "==> Script finalizado com sucesso; instale o nvm, shader booster e o aur helper se quiser depois!"
cd ..
rm -rf Arch
