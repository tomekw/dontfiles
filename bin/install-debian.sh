#!/bin/bash

# Prepare Docker
# curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
# sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian buster stable"

# Add Buster repo
# sudo add-apt-repository "deb deb http://ftp.pl.debian.org/debian/ buster main"

sudo apt update
sudo apt upgrade
sudo apt install \
  curl \
  firefox-esr \
  firmware-amd-graphics \
  firmware-iwlwifi \
  fish \
  grimshot \
  kitty \
  nautilus \
  neofetch \
  neovim \
  npm \
  openjdk-11-jdk \
  ripgrep \
  rlwrap \
  sway \
  swayidle \
  swaylock \
  tmux \
  tmux-plugin-manager \
  unzip \
  urlview \
  waybar \
  wofi \
  zip

mkdir -p ~/depot/personal

# Install vim-plug
curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install Clojure
# cd /tmp
# curl -O https://download.clojure.org/install/linux-install-1.10.2.774.sh
# chmod +x linux-install-1.10.2.774.sh
# sudo ./linux-install-1.10.2.774.sh
# cd ~

# Configure Docker
# sudo usermod -aG docker $(whoami)
# sudo systemctl enable docker.service
# sudo systemctl enable containerd.service

# sudo curl -L "https://github.com/docker/compose/releases/download/1.28.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
# sudo chmod +x /usr/local/bin/docker-compose

# Install JetBrains fonts
cd /tmp
wget https://download.jetbrains.com/fonts/JetBrainsMono-2.225.zip
sudo unzip JetBrainsMono-2.225.zip -d /usr/share
sudo fc-cache -f -v
rm JetBrainsMono-2.225.zip
cd ~

# Install Slack
# cd /tmp
# wget https://downloads.slack-edge.com/linux_releases/slack-desktop-4.12.2-amd64.deb
# sudo apt install ./slack-desktop-4.12.2-amd64.deb
# cd ~

# Switch to Fish shell
chsh -s /usr/bin/fish
