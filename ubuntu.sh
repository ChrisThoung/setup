#!/usr/bin/env bash
sudo apt-get update
# Emacs
cp dotfiles/.emacs ~/
# Solarized
wget http://download.savannah.gnu.org/releases/color-theme/color-theme.el.gz
gzip -d color-theme.el.gz
cp color-theme.el ~/.emacs.d/
git clone git://github.com/altercation/solarized.git
mkdir -p ~/.emacs.d/solarized
cp solarized/emacs-colors-solarized/* ~/.emacs.d/solarized/
# Redshift
sudo apt-get install redshift
cp dotfiles/redshift.conf ~/.config/
