set -e
sudo pacman -S nix

sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo systemctl enable ufw 
sudo ufw enable

sudo pacman -S --noconfirm gamemode ffmpegthumbnailer
git clone https://github.com/psygreg/shader-patcherx.git
cd shader-patcherx
chmod +x patcher.sh
./patcher.sh
cd ..
rm -rf shader-patcherx

sudo pacman -Scc --noconfirm
echo "https://github.com/nvm-sh/nvm"
cd ..
rm -rf Arch
