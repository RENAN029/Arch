set -e

sudo apt install -y gnome-shell gnome-console gnome-software gnome-tweaks gnome-control-center gnome-disk-utility gnome-system-monitor

sudo apt install -y ffmpeg gst-plugins-ugly gst-plugins-good gst-plugins-base gst-plugins-bad gst-libav gstreamer

sudo apt install -y gdm3 nvidia-open nano fastfetch gufw noto-fonts-cjk fwupd flatpak intel-ucode yt-dlp aria2

systemctl enable gdm3

git clone https://github.com/maximilionus/lucidglyph.git
cd lucidglyph
sudo ./lucidglyph.sh install
cd ..
rm -rf lucidglyph

sudo sed -i 's/trixie/testing/g' /etc/apt/sources.list

sudo apt full-upgrade -y
sudo autoremove --purge -y
sudo apt clean -y

echo "==> Script finalizado com sucesso; instale o nvm, shader booster e o aur helper se quiser depois!"
cd ..
rm -rf Arch
