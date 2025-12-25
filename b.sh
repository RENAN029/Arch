set -e
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo systemctl enable ufw  
sudo ufw enable
sudo ufw allow 53317/udp
sudo ufw allow 53317/tcp
sudo ufw allow 1714:1764/udp
sudo ufw allow 1714:1764/tcp
sudo ufw reload

git clone https://github.com/psygreg/shader-patcherx.git
cd shader-patcherx 
chmod +x patcher.sh
./patcher.sh
cd ..
rm -rf shader-patcherx
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"

sudo pacman -Scc --noconfirm
sudo pacman -Syu --noconfirm
echo "curl -fsSL https://install.danklinux.com | sh"
echo "sh <(curl -L https://raw.githubusercontent.com/JaKooLit/Hyprland-Dots/main/Distro-Hyprland.sh)"
echo "bash <(curl -s https://ii.clsty.link/get)"
sudo ufw status
echo "FIM"
cd ..
rm -rf iwd
