sudo -S pacman -Syu --noconfirm
sudo -S pacman -S neovim python3 cargo --noconfirm
cd ~
git clone https://github.com/LunarVim/LunarVim.git
cd LunarVim
echo -e "y\ny\ny" | make install
cd ..
rm -rf LunarVim
echo "export PATH=\$HOME/.local/bin:\$PATH" >> $HOME/.zshrc
echo "export PATH=\$HOME/.local/bin:\$PATH" >> $HOME/.bashrc
export PATH=$HOME/.local/bin:$PATH

sudo -S pacman -S go --noconfirm
git clone https://aur.archlinux.org/yay-git.git
cd yay-git
echo -e "y" | makepkg -si
cd ..
rm -rf yay-git

yay -Syu --noconfirm

sudo -S pacman -S sddm --noconfirm
yay -S dwm --noconfirm
