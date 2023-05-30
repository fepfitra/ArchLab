echo "
=============================================================
INSTALLING GIT AND YAY/AUR
=============================================================
"
sudo pacman -Syu --noconfirm
sudo pacman -S git --noconfirm

git clone https://aur.archlinux.org/yay-git.git
cd yay-git
echo -e "y" | makepkg -si
cd ..
rm -rf yay-git

yay -Syu --noconfirm
