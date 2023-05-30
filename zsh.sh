echo "
=============================================================
INSTALLING ZSH
=============================================================
"

yay -Syu --noconfirm
yay -S zsh manjaro-zsh-config --noconfirm

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
chsh -s $(which zsh)
