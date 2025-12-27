git clone https://github.com/RENAN029/MISE.git

cd iwd

chmod +x b.sh

./b.sh

sudo pacman -Scc ffmpegthumbnailer 

sudo pacman -S fish fisher starship

sudo pacman -Syu $(pacman -Qnq) 

sudo pacman -Rsnu $(pacman -Qdtq) 
