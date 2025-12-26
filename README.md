git clone https://github.com/RENAN029/MISE.git

cd iwd

chmod +x b.sh

./b.sh

do pacman -Scc 

sudo pacman -S wget nano vim htop

sudo pacman -Syu $(pacman -Qnq) 

sudo pacman -Rsnu $(pacman -Qdtq) 
