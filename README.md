git clone https://github.com/RENAN029/Arch.git

cd Arch

chmod +x b.sh

./b.sh

sudo pacman -Syu 

--downloader aria2c noto-fonts packege

sudo pacman -Scc

sudo pacman -Syu $(pacman -Qnq) 

sudo pacman -Rsnu $(pacman -Qdtq)

sudo pacman -S 

sudo pacman -Rsnu

https://github.com/typecraft-dev/dotfiles/tree/master https://github.com/FernuDev/Hypr-dotfiles https://github.com/FernuDev/Hypr-dotfiles/tree/main https://github.com/DoubleDotStudios/dotfiles-old sudo pacman -S bc ncdu termusic taskwarrior

AppIndicator and KStatusNotifierItem Support; Clipboard Indicator; Dash to Dock; GSConnect

As linhas de instalacao devem ter no maximo 1 de diferenca, podendo ir diminuindo ou aumentando de 1 em 1 tendo base os pacotes fontes e codecs

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
set -e
sudo pacman -S --noconfirm noto-fonts noto-fonts-cjk noto-fonts-emoji ttf-noto-nerd noto-fonts-extra ttf-jetbrains-mono
sudo pacman -S --noconfirm ffmpeg gst-plugins-ugly gst-plugins-good gst-plugins-base gst-plugins-bad gst-libav gstreamer 
sudo pacman -S --noconfirm nvidia-open intel-ucode git helix fastfetch btop ufw fwupd flatpak yt-dlp aria2 earlyoom rofi 
sudo pacman -S --noconfirm lightdm-gtk-greeter xdg-user-dirs xdg-desktop-portal-hyprland hyprpolkitagent uwsm hyprsunset
sudo pacman -S --noconfirm hyprland hyprpaper hyprpicker hypridle libqalculate kitty waybar superfile hyprshot calcurse 
 
systemctl enable lightdm earlyoom
sudo pacman -S --noconfirm gamemode
systemctl --user enable hyprpolkitagent.service
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
echo "==> Script finalizado com sucesso; instale o nvm, swaync, presenterm, shader booster e o aur helper se quiser depois!"
cd ..
rm -rf Arch
