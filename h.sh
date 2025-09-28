set -e
sudo pacman -S --noconfirm lightdm-gtk-greeter hyprland uwsm kitty wofi waybar superfile swaync hyprpaper hyprpicker hyprshot hyprpolkitagent xdg-user-dirs
sudo pacman -S --noconfirm ffmpeg gst-plugins-ugly gst-plugins-good gst-plugins-base gst-plugins-bad gst-libav gstreamer ttf-firacode-nerd gnome-software
sudo pacman -S --noconfirm nvidia-open intel-ucode micro fastfetch btop ufw noto-fonts-cjk fwupd flatpak yt-dlp aria2 xdg-desktop-portal-hyprland calcurse 

systemctl enable lightdm
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
