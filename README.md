git clone https://github.com/RENAN029/Arch.git

cd Arch

chmod +x b.sh

./b.sh

sudo pacman -Syu 

sudo pacman -Scc

sudo pacman -Syu $(pacman -Qnq) 

sudo pacman -Rsnu $(pacman -Qdtq)

sudo pacman -S 

sudo pacman -Rsnu

Extensões: AppIndicator and KStatusNotifierItem Support; Clipboard Indicator; Dash to Dock; GSConnect; User Themes; Shell

sudo pacman -S --noconfirm lightdm-gtk-greeter xdg-user-dirs xdg-desktop-portal-hyprland hyprpolkitagent uwsm hyprsunset

sudo pacman -S --noconfirm hyprland hyprpaper hyprpicker hypridle libqalculate kitty waybar superfile hyprshot calcurse 
