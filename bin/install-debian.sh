#!/bin/bash

# Prepare Docker
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian buster stable"

sudo apt update
sudo apt upgrade
sudo apt install \
  apt-transport-https \
  arc-theme \
  containerd.io \
  cups \
  docker-ce \
  docker-ce-cli \
  ca-certificates \
  curl \
  firmware-amd-graphics \
  fish \
  gnome-shell-extension-dash-to-panel \
  gnupg-agent \
  neofetch \
  neovim \
  node-typescript \
  nodejs \
  npm \
  openjdk-11-jdk \
  ripgrep \
  rlwrap \
  software-properties-common \
  software-properties-common \
  tmux \
  tmux-plugin-manager \
  urlview

mkdir -p ~/depot/personal

# Install Pop Shell
cd ~/depot/personal
git clone https://github.com/pop-os/shell.git
cd shell
make local-install
cd ~

# Install vim-plug
curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install Clojure
cd /tmp
curl -O https://download.clojure.org/install/linux-install-1.10.2.774.sh
chmod +x linux-install-1.10.2.774.sh
sudo ./linux-install-1.10.2.774.sh
cd ~

# Configure Docker
sudo usermod -aG docker $(whoami)
sudo systemctl enable docker.service
sudo systemctl enable containerd.service

sudo curl -L "https://github.com/docker/compose/releases/download/1.28.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Switch to Fish shell
chsh -s /usr/bin/fish
