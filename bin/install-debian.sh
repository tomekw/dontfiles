#!/bin/bash

sudo apt update
sudo apt upgrade
sudo apt install \
  containerd.io \
  curl \
  docker-ce \
  docker-ce-cli \
  firefox-esr \
  firmware-amd-graphics \
  firmware-iwlwifi \
  fish \
  fonts-jetbrains-mono \
  grimshot \
  kitty \
  nautilus \
  nautilus-dropbox \
  neofetch \
  neovim \
  npm \
  openjdk-11-jdk \
  pavucontrol \
  pulseaudio \
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
  wev \
  wf-recorder \
  wlogout \
  wob \
  wofi \
  xwayland \
  zip

mkdir -p ~/depot/personal

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

# Install Slack
cd /tmp
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-4.12.2-amd64.deb
sudo apt install ./slack-desktop-4.12.2-amd64.deb
rm slack-desktop-4.12.2-amd64.deb
cd ~

# Install clj-kondo
cd /tmp
curl -sLO https://raw.githubusercontent.com/clj-kondo/clj-kondo/master/script/install-clj-kondo
chmod +x install-clj-kondo
sudo ./install-clj-kondo
rm install-clj-kondo
cd ~

# Switch to Fish shell
chsh -s /usr/bin/fish
