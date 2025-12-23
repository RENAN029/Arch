git clone https://github.com/RENAN029/Arch.git

cd Arch

chmod +x b.sh

./b.sh

sudo pacman -S plasma-browser-integration

do pacman -Scc krd ksshaskpass kwallet-pam

sudo pacman -Syu $(pacman -Qnq) kwrited

sudo pacman -Rsnu $(pacman -Qdtq) primter
