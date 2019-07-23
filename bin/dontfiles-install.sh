#!/bin/bash

# Install Homebrew
xcode-select --install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Setup git alias
alias dfgit="git --work-tree=$HOME/ --git-dir=$HOME/dontfiles"

# Install vim-plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install packages
brew bundle install
pip3 install --user pynvim

# Switch to Fish shell
echo /usr/local/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish
