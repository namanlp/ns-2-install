# This script has been written by Naman Garg
# Naman Garg <naman@garudalinux.org>

# This script installs the Network Animator and Network Simulator in Arch Linux and Arch Linux based distros, from AUR
# https://aur.archlinux.org/packages/nam
# https://aur.archlinux.org/packages/ns
# This Script requires installation of paru, the AUR helper, and sed along with pacman

# Also, please don't try the script standalone, always download sample.tcl in same folder, so that script can test the installation as well 

#!/bin/bash

sudo pacman -Syu --noconfirm
paru -S nam ns --noconfirm

echo "\n\nDone installation, now fixing encoding issue in tk.tcl and ttk.tcl"

sudo sed -i 's/-encoding utf-8/ /g' /usr/lib/tk8.6/tk.tcl
sudo sed -i 's/-encoding utf-8/ /g' /usr/lib/tk8.6/ttk/ttk.tcl


if [ -f "sample.tcl" ];
then

echo "\n\nTesting The Installation."

ns sample.tcl

else

# is it is not exist then it will be printed
echo "Sorry, can not test installation, because sample.tcl file not found"
echo "You can download it https://github.com/namanlp/ns-2-install"
fi
