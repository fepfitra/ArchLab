echo "
=============================================================
INSTALLING LUNARVIM
=============================================================
"

sudo pacman -Syu --noconfirm
sudo pacman -S neovim python3 cargo go --noconfirm

git clone https://github.com/LunarVim/LunarVim.git
cd LunarVim
echo -e "y\ny\ny" | make install
cd ..
rm -rf LunarVim
echo "export PATH=\$HOME/.local/bin:\$PATH" >> $HOME/.bashrc

export PATH=$HOME/.local/bin:$PATH
