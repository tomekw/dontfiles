#!/bin/bash

sudo xbps-install -Su
sudo xbps-install \
  clojure \
  curl \
  dbus-elogind \
  dbus-elogind-libs \
  dbus-elogind-x11 \
  dejavu-fonts-ttf \
  docker \
  docker-compose \
  firefox \
  firefox-i18n-en-GB \
  fish-shell \
  git \
  grimshot \
  kitty \
  liberation-fonts-ttf \
  mesa-dri \
  mesa-vaapi \
  mesa-vdpau \
  mpv \
  nautilus \
  nautilus-dropbox \
  neofetch \
  neovim \
  nodejs \
  pavucontrol \
  polkit-elogind \
  pulseaudio \
  ripgrep \
  sway \
  swayidle \
  swaylock \
  tmux \
  urlview \
  Waybar \
  wf-recorder \
  wlogout \
  wob \
  wofi

# TODO: Enable services: dbus, dhcpcd, elogind, wpa_supplicant, polkitd, others...

# vim-plug
curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
