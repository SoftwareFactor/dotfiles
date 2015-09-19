# This script customizes fresh Ubuntu install according to my personal preferences

## Update package definitions
sudo apt-get update

## Install some commonly used tools
sudo apt-get install tmux git

## Install vim-gnome that comes with clipboard enabled
sudo apt-get install vim-gnome

## Add "Open In Terminal" context menu link to Nautilus
#sudo apt-get install nautilus-open-terminal
#nautilus -q

## Install Aspell Lithuanian spell-check dictionary
sudo apt-get install aspell-lt

## Install latest Remmina version. I was unable to set up shared folders on older version in Ubuntu 14.04. This also fixes clipboard sharing issue
sudo apt-add-repository ppa:remmina-ppa-team/remmina-next
sudo apt-get update
sudo apt-get install libfreerdp-plugins-standard remmina remmina-plugin-rdp

## Install Mono
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb http://download.mono-project.com/repo/debian wheezy main" | sudo tee /etc/apt/sources.list.d/mono-xamarin.list
sudo apt-get update
sudo apt-get install mono-devel
sudo apt-get install mono-complete

## Install Nemo and make it default file manager
sudo apt-get install nemo
xdg-mime default nemo.desktop inode/directory application/x-gnome-saved-search

## Install Nemo dropbox extension
sudo add-apt-repository ppa:webupd8team/nemo
sudo apt-get update
sudo apt-get install nemo-dropbox

## Install Shutter screenshot taking application
sudo add-apt-repository ppa:shutter/ppa
sudo apt-get update && sudo apt-get install shutter

# Fix Unity bug that opens new windows not on top
#gconftool-2  --type=Integer --set /apps/compiz-1/general/screen0/options/focus_prevention_level 0
#gconftool-2  --type=Integer --set /org/compiz/profiles/unity/plugins/core/focus_prevention_level 0

# Installs TLP - Linux advanced power management tool
sudo add-apt-repository ppa:linrunner/tlp
sudo apt-get update
sudo apt-get install tlp tlp-rdw

