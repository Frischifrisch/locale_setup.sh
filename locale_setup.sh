#!/bin/bash
# FILEPATH: locale_setup.sh

# Disable Read-Only mode
sudo steamos-readonly disable

# Init Pacman Keys
sudo pacman-key --init
sudo pacman-key --populate
sudo pacman-key --refresh-keys

# Edit locale.gen
# sudo nano /etc/locale.gen
echo 'de_DE.UTF-8 UTF-8' >> /etc/locale.gen

# fetch glibc with the needed locales
sudo pacman -S glibc

# generate locales
sudo locale-gen

# install i18n package for kde
sudo pacman -S ki18n

# reinstall plasma packages with language support
sudo pacman -S plasma

# install german spelling tools
sudo pacman -S aspell-de

# reinstall all packages
sudo pacman -Qqn | sudo pacman -S -

# reboot system
# sudo shutdown -r now
