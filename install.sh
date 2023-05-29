sudo pacman -Syu --noconfirm
sudo pacman -S git neovim python3 cargo go sddm --noconfirm
sudo systemctl enable sddm
cd ~

git clone https://aur.archlinux.org/yay-git.git
cd yay-git
echo -e "y" | makepkg -si
cd ..
rm -rf yay-git

yay -Syu --noconfirm
yay -S dwm imlib2 zsh manjaro-zsh-config --noconfirm

git clone https://github.com/LunarVim/LunarVim.git
cd LunarVim
echo -e "y\ny\ny" | make install
cd ..
rm -rf LunarVim
echo "export PATH=\$HOME/.local/bin:\$PATH" >> $HOME/.bashrc
echo "
export PATH=\$HOME/.local/bin:\$PATH
HISTFILE=~/.histfile
HISTSIZE=1000
bindkey -v

# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi
" >> $HOME/.zshrc

export PATH=$HOME/.local/bin:$PATH

mkdir ~/.dwm
echo "slstatus &" > ~/.dwm/autostart.sh
mkdir ~/theme
cd ~/theme
git clone https://github.com/0x73hahd/dwm-config
cd dwm-config/source
make
sudo make install
cd ../slstatus
make
sudo make install

mkdir ~/.fonts
cd ~/.fonts
wget https://github.com/romkatv/dotfiles-public/raw/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Bold%20Italic.ttf
wget https://github.com/romkatv/dotfiles-public/raw/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Bold.ttf
wget https://github.com/romkatv/dotfiles-public/raw/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Italic.ttf
wget https://github.com/romkatv/dotfiles-public/raw/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Regular.ttf

cd ~/theme
git clone https://github.com/ronniedroid/getnf.git
cd getnf
./install.sh
