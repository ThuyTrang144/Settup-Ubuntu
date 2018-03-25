#JRE
sudo apt-get install default-jre

# Hipchat
cd ~
sudo sh -c 'echo "deb https://atlassian.artifactoryonline.com/atlassian/hipchat-apt-client $(lsb_release -c -s) main" > /etc/apt/sources.list.d/atlassian-hipchat4.list'
wget -O - https://atlassian.artifactoryonline.com/atlassian/api/gpg/key/public | sudo apt-key add -
sudo apt-get update
sudo apt-get install hipchat4

# VLC: play video
sudo apt-get install vlc

# Sublime text: 
cd ~
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text

# Yakuake: 
sudo apt-get install yakuake

# Git: 
sudo apt-get install git

# Postgres:
sudo apt-get install postgresql libpq-dev postgresql-client postgresql-client-commo