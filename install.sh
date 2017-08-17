#! /bin/bash

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

# To change the background
sudo apt-get install feh -y

# Install zsh
sudo apt-get install zsh  -y
chsh -s $(which zsh)

# Install http://ohmyz.sh/
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


