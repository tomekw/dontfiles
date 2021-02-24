#!/bin/bash

# Install vim-plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Java is needed for other packages, like "clojure"
brew tap adoptopenjdk/openjdk
brew cask install adoptopenjdk14

# Install packages
brew bundle install
pip3 install --user pynvim

# Switch to Fish shell
echo /usr/local/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish
