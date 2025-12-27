git clone https://github.com/RENAN029/MISE.git

cd iwd

chmod +x b.sh

./b.sh

sudo pacman -Scc ffmpegthumbnailer 

sudo pacman -S wget htop nano vim

sudo pacman -Syu $(pacman -Qnq) 

sudo pacman -Rsnu $(pacman -Qdtq) 
