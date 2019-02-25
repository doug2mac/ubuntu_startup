# This is a configuration file for Ubuntu 18.04 on wsl #
# resolution = 1920 x 1440
# update packages to install guest additions
# sudo apt-get update
# sudo apt-get install build-essential gcc make perl dkms
# reboot
# insert guest additions cd
# run the software

# ensure that our ubuntu instance is up to date
sudo apt-get -y update
sudo apt-get -y upgrade

# grab my own .bashrc filepath shortcuts
## DOUG's CUSTOM CODE ##
echo "###BEGIN DOUGS CUSTOM CODE###" >> ~/.bashrc
echo "alias proj_remote='cd /mnt/c/Users/DougMacDonald/MSCHE/Shared\ -\ Research/Projects'" >> ~/.bashrc
echo "alias home='cd /mnt/c/Users/DougMacDonald/OneDrive\ -\ MSCHE/_Profile/Desktop'" >> ~/.bashrc
echo "alias org='cd /mnt/c/Users/DougMacDonald/OneDrive\ -\ MSCHE/_Profile/Desktop/Syncthing/Dropbox/org'" >> ~/.bashrc
echo "alias dm='cd /mnt/c/Users/DougMacDonald/MSCHE/Shared\ -\ Research/Projects/Presence\ Consulting\ Group\ \(PCG\)/Data\ Migration'" >> ~/.bashrc
echo "alias class='cd /mnt/c/Users/DougMacDonald/OneDrive\ -\ MSCHE/_Profile/Desktop/Syncthing/Courses/UPenn'" >> ~/.bashrc
echo "alias backup='cd /mnt/i/SalesForce\ Backups'" >> ~/.bashrc
echo "alias jn='jupyter-lab . --no-browser'" >> ~/.bashrc
echo "export DISPLAY=localhost:0.0" >> ~/.bashrc
echo "alias tasks='git grep -EIn \"TODO|FIXME\"'" >> ~/.bashrc

sudo apt-get -y install htop
sudo apt-get -y install git-core
sudo apt-get -y install curl
sudo apt-get -y install vim
sudo apt-get -y install dvipng
sudo apt-get -y install markdown
sudo apt-get -y install pandoc
sudo apt-get -y install unoconv
sudo apt-get -y install ispell
# packages for R
sudo apt-get -y install build-essential libcurl4-gnutls-dev libxml2-dev libssl-dev

# install chrome
cd /tmp

# install anaconda
# grab the install script
curl -O https://repo.continuum.io/archive/Anaconda3-2018.12-Linux-x86_64.sh

# run the install script
bash Anaconda3-2018.12-Linux-x86_64.sh

# source the bashrc to be able to run conda
source ~/.bashrc

# add the needed repository
sudo add-apt-repository ppa:marutter/rrutter3.5
sudo apt-get install -y r-base
sudo apt-get install -y gdebi-core
wget https://download2.rstudio.org/rstudio-server-1.1.453-amd64.deb
sudo gdebi rstudio-server-1.1.453-amd64.deb

# Download and Install RStudio
wget https://download1.rstudio.org/rstudio-xenial-1.1.463-amd64.deb
sudo gdebi rstudio-xenial-1.1.463-amd64.deb
rm rstudio-xenial-1.1.463-amd64.deb

# install some dependencies for devtools
apt-get -y build-dep libcurl4-gnutls-dev
apt-get -y install libcurl4-gnutls-dev

# install some key R-packages
wget https://raw.githubusercontent.com/doug2mac/ubuntu_startup/master/rpackages.R
sudo Rscript rpackages.R

# set full edit permissions for the folder containing shiny-servers
sudo chmod 777 -R /srv/shiny-server

# download and install emacs + spacemacs

# download and install emacs
sudo add-apt-repository ppa:kelleyk/emacs

sudo apt update

sudo apt-get -y install emacs25

# if needed to remove
# sudo apt remove emacs25 emacs25-nox && sudo apt autoremove

# remove the included version of org-mode in spacemacs since it breaks spacemacs
sudo rm -rf /usr/share/emacs/25.3/lisp/org/*

# clone spacemacs into .emacs.d
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

# use the develop branch instead of the master branch
cd ~/.emacs.d
git checkout -b develop origin/develop

# version the old .spacemacs file
# mv .spacemacs .spacemacs.bak

# pull my .spacemacs config file
cd ~
wget https://raw.githubusercontent.com/doug2mac/ubuntu_startup/master/.spacemacs

# install pdf-latex
sudo apt-get -y install texlive-latex-base
sudo apt-get -y install texlive-fonts-recommended
sudo apt-get -y install texlive-fonts-extra
