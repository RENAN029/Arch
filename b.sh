set -e

sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo systemctl enable ufw 
sudo ufw enable

git clone https://github.com/psygreg/shader-patcherx.git
cd shader-patcherx
chmod +x patcher.sh
./patcher.sh
cd ..
rm -rf shader-patcherx

sudo pacman -Scc --noconfirm
sudo pacman -Syu --noconfirm
echo "=> zen; hydra; office"

cd ..
rm -rf Arch
