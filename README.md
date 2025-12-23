git clone https://github.com/RENAN029/Arch.git

cd Arch

chmod +x b.sh

./b.sh

sudo pacman -S 

do pacman -Scc 

sudo pacman -Syu $(pacman -Qnq) 

sudo pacman -Rsnu $(pacman -Qdtq) 
