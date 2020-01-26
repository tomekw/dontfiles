#!/bin/bash

# Install vim-plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Java is needed for other packages, like "clojure"
brew cask install adoptopenjdk11

# Install packages
brew bundle install
pip3 install --user pynvim

# Switch to Fish shell
echo /usr/local/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish
