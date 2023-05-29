sudo pacman -S neovim python3 cargo --noconfirm
cd ~
git clone https://github.com/LunarVim/LunarVim.git
cd LunarVim
make install
sudo make install
cd ..
rm -rf LunarVim
echo "export PATH=\$HOME/.local/bin:\$PATH" >> $HOME/.zshrc
echo "export PATH=\$HOME/.local/bin:\$PATH" >> $HOME/.bashrc
export PATH=$HOME/.local/bin:$PATH
