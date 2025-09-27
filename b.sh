set -e

sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo systemctl enable ufw
sudo ufw enablep

sudo pacman -S --needed --noconfirm base-devel git
git clone https://aur.archlinux.org/pikaur.git
cd pikaur
makepkg -fsri --noconfirm
cd ..
rm -rf pikaur

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
