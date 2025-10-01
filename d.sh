set -e
sudo pacman -S --noconfirm noto-fonts noto-fonts-cjk noto-fonts-emoji ttf-noto-nerd noto-fonts-extra ttf-jetbrains-mono
sudo pacman -S --noconfirm ffmpeg gst-plugins-ugly gst-plugins-good gst-plugins-base gst-plugins-bad gst-libav gstreamer 
sudo pacman -S --noconfirm gnome-shell gnome-console gnome-software gnome-tweaks gnome-control-center gnome-disk-utility 
sudo pacman -S --noconfirm gdm nvidia-open intel-ucode git nano fastfetch btop gufw fwupd flatpak yt-dlp aria2 ncdu cups

systemctl enable gdm cups
git clone https://github.com/maximilionus/lucidglyph.git
cd lucidglyph
sudo ./lucidglyph.sh install
cd ..
rm -rf lucidglyph

sudo pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
sudo pacman-key --lsign-key 3056513887B78AEB
sudo pacman -U --noconfirm "https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst"
sudo pacman -U --noconfirm "https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst"

sudo sed -i 's/^#Color/Color/' /etc/pacman.conf
sudo sed -i '/Color/a ILoveCandy' /etc/pacman.conf
sudo sed -i '/^ParallelDownloads/d' /etc/pacman.conf
sudo sed -i '/ILoveCandy/a ParallelDownloads = 15' /etc/pacman.conf
echo -e "\n[chaotic-aur]\nInclude = /etc/pacman.d/chaotic-mirrorlist" | sudo tee -a /etc/pacman.conf

sudo pacman -Syu --noconfirm 
sudo pacman -Scc --noconfirm

echo "==> Script finalizado com sucesso; instale o nvm, shader booster e o aur helper se quiser depois!"
cd ..
rm -rf Arch
