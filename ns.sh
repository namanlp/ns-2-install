# This script has been written by Naman Garg
# Naman Garg <naman@garudalinux.org>

# This script installs the Network Animator and Network Simulator in Arch Linux and Arch Linux based distros, from AUR
# https://aur.archlinux.org/packages/nam
# https://aur.archlinux.org/packages/ns
# This Script requires installation of paru, the AUR helper, and sed along with pacman

#!/bin/bash

sudo pacman -Syu --noconfirm
paru -S nam ns --noconfirm

echo "Done installation, now fixing encoding issue in tk.tcl and ttk.tcl"

sudo sed -i 's/-encoding utf-8/ /g' /usr/lib/tk8.6/tk.tcl
sudo sed -i 's/-encoding utf-8/ /g' /usr/lib/tk8.6/ttk/ttk.tcl

