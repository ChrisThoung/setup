#!/usr/bin/env bash
sudo apt-get update
# Bash
cp dotfiles/.bashrc ~/
# Tools: Dev
sudo apt-get install curl libcurl4-openssl-dev libxml2-dev libssh2-1-dev
# Tools: TLP
sudo add-apt-repository ppa:linrunner/tlp
sudo apt-get install tlp tlp-rdw
# Parallel
sudo apt-get install parallel
# Emacs
cp dotfiles/.emacs ~/
sudo apt-get install ess
# R
sudo apt-get install r-base-core
sudo apt-get build-dep r-base-core
sudo apt-get install r-base-dev
# Julia
sudo apt-get install julia
# Octave
sudo apt-get install octave
# Gretl
sudo apt-get install gretl
# Solarized
mkdir temp
cd temp
wget http://download.savannah.gnu.org/releases/color-theme/color-theme.el.gz
gzip -d color-theme.el.gz
cp color-theme.el ~/.emacs.d/
git clone git://github.com/altercation/solarized.git
mkdir -p ~/.emacs.d/solarized
cp solarized/emacs-colors-solarized/* ~/.emacs.d/solarized/
cd ..
# Redshift
sudo apt-get install redshift
cp dotfiles/redshift.conf ~/.config/
# MySQL
sudo apt-get install mysql-server
# LaTeX
sudo apt-get install r-base-dev texlive-full
# Pandoc
sudo apt-get install pandoc
