sudo pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
sudo pacman-key --lsign-key 3056513887B78AEB
sudo pacman -U --noconfirm "https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst"
sudo pacman -U --noconfirm "https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst"
echo -e "\n[chaotic-aur]\nInclude = /etc/pacman.d/chaotic-mirrorlist" | sudo tee -a /etc/pacman.conf
sudo pacman -S --noconfirm nvidia-open intel-ucode ufw fwupd gamemode fuse apparmor flatpak earlyoom
sudo pacman -S hyprpaper hyprpicker xdg-user-dirs hypridle hyprlock hyprqt6engine hyprpolkitagent ly 
sudo pacman -S hyprsysteminfo hyprsunset hyprlauncher hyprland-qt-support xdg-desktop-portal-hyprland  
flatpak install -y flathub io.github.kolunmi.Bazaar 
systemctl enable apparmor earlyoom

