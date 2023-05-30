echo "
=============================================================
INSTALLING SDDM AND DWM
=============================================================
"

sudo pacman -Syu --noconfirm
sudo pacman -S sddm wget alacritty --noconfirm
sudo systemctl enable sddm

yay -Syu --noconfirm
yay -S --noconfirm dwm imlib2

mkdir ~/.dwm
echo "
slstatus &
anydesk &
" > ~/.dwm/autostart.sh
chmod +x ~/.dwm/autostart.sh
mkdir ~/theme
cd ~/theme
git clone https://github.com/0x73hahd/dwm-config
cd dwm-config
mkdir ~/.config
cp -r ./.config/* ~/.config/
cd source
make
sudo make install
cd ../slstatus
make
sudo make install

mkdir ~/.local
mkdir ~/.local/share
mkdir ~/.local/share/fonts
cd ~/.local/share/fonts/
wget https://github.com/romkatv/dotfiles-public/raw/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Bold%20Italic.ttf
wget https://github.com/romkatv/dotfiles-public/raw/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Bold.ttf
wget https://github.com/romkatv/dotfiles-public/raw/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Italic.ttf
wget https://github.com/romkatv/dotfiles-public/raw/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Regular.ttf

cd ~/theme
git clone https://github.com/ronniedroid/getnf.git
cd getnf
./install.sh
