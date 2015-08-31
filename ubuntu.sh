#!/usr/bin/env bash
sudo apt-get update
# Tools
sudo apt-get install curl libcurl4-openssl-dev
# Emacs
cp dotfiles/.emacs ~/
sudo apt-get install ess
# R
sudo apt-get install r-base-core
# Julia
sudo apt-get install julia
# Octave
sudo apt-get install octave
# Gretl
sudo apt-get install gretl
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
