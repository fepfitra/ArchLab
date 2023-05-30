echo "
=============================================================
INSTALLING ANYDESK
=============================================================
"

sudo pacman -Syu --noconfirm
yay -S anydesk-bin --noconfirm

echo "
anydesk &
" >> ~/.dwm/autostart.sh
