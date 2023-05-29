sudo pacman -S git neovim python3 cargo --noconfirm
cd ~
git clone https:/github.com/LunarVim/LunarVim
cd LunarVim
make install
sudo make install
cd ..
rm -rf LunarVim
