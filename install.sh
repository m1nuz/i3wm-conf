#! /bin/bash

# Install
sudo apt-get install curl -y

# Install i3wm and i3blocks
sudo apt-get install i3 -y
sudo apt-get install i3blocks -y

# Backup & get config
mv ~/.config/i3 ~/.config/i3_old
mkdir ~/.config/i3
cd ~/.config/i3/
git clone https://github.com/m1nuz/i3wm-conf.git .

# Install FontAwesome
mkdir ~/.fonts
wget https://github.com/FortAwesome/Font-Awesome/raw/master/fonts/fontawesome-webfont.ttf
mv fontawesome-webfont.ttf ~/.fonts/

# Screenshot
sudo apt-get install scrot -y

# To change the background
sudo apt-get install feh -y

# Install zsh
sudo apt-get install zsh  -y
chsh -s $(which zsh)

# Numlock
sudo apt-get install numlockx -y

# Install http://ohmyz.sh/
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install rofi
sudo apt-get install rofi -y
mkdir ~/.config/rofi
curl -o ~/.config/rofi/config https://raw.githubusercontent.com/DaveDavenport/rofi-themes/master/Themes/Arc-Dark.theme

#sudo apt-get install xcompmgr -y

#
# Powerline fonts
#
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts

#
# Features LiL 
#
sudo apt-get install screenfetch -y
sudo apt-get install tty-clock -y
