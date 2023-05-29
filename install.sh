sudo pacman -S neovim python3 cargo --noconfirm
cd ~
git clone https://github.com/LunarVim/LunarVim.git
cd LunarVim
make install
sudo make install
cd ..
rm -rf LunarVim
