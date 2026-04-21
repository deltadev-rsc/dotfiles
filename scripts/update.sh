#!/usr/bin/bash

update_pkgs() {
  clear
  echo "update XBPS packages"
  sudo xbps-install -Su

  echo "update flatpak packages"
  flatpak update
}

update_pkgs
