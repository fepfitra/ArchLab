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
yay -S dwm --noconfirm

git clone https://github.com/LunarVim/LunarVim.git
cd LunarVim
echo -e "y\ny\ny" | make install
cd ..
rm -rf LunarVim
echo "export PATH=\$HOME/.local/bin:\$PATH" >> $HOME/.zshrc
echo "export PATH=\$HOME/.local/bin:\$PATH" >> $HOME/.bashrc
export PATH=$HOME/.local/bin:$PATH
