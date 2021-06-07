#!/bin/bash

sudo xbps-install -Su
sudo xbps-install \
  avahi \
  aws-cli \
  chrony \
  clojure \
  cups \
  curl \
  dbus-elogind \
  dbus-elogind-libs \
  dbus-elogind-x11 \
  dejavu-fonts-ttf \
  docker \
  docker-compose \
  emacs-gtk3 \
  evince \
  ffmpeg \
  firefox \
  firefox-i18n-en-GB \
  fish-shell \
  font-awesome5 \
  git \
  gnome-calculator \
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
  pamixer \
  pavucontrol \
  pipewire \
  polkit-elogind \
  pulseaudio \
  python3-neovim \
  ripgrep \
  sway \
  swayidle \
  swaylock \
  telegram-desktop \
  ttf-material-icons \
  tmux \
  unzip \
  urlview \
  Waybar \
  wf-recorder \
  wget \
  wlogout \
  wob \
  wofi \
  xdg-desktop-portal-wlr \
  zip

# TODO: Enable services: dbus, dhcpcd, elogind, wpa_supplicant, polkitd, others...

# vim-plug
curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
