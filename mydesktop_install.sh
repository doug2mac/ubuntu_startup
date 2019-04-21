# This is a configuration file for Ubuntu 18.04 on Virtualbox #
# resolution = 1920 x 1440
# update packages to install guest additions
# sudo apt-get update
# sudo apt-get install build-essential gcc make perl dkms
# reboot
# insert guest additions cd
# run the software

### BE SURE TO INSTALL VIRTUAL BOX GEST ADDITIONS FIRST ###
sudo adduser dougmac vboxsf

# ensure that our ubuntu instance is up to date
sudo apt-get -y update
sudo apt-get -y upgrade

# grab my own .bashrc filepath shortcuts
## DOUG's CUSTOM CODE ##
echo "alias proj_remote='cd /media/sf_MSCHE/Shared\ -\ Research/Projects'" >> ~/.bashrc
echo "alias org='cd /media/sf_Desktop/Syncthing/Dropbox/org'" >> ~/.bashrc
echo "alias jn='jupyter-lab .  --no-browser'" >> ~/.bashrc
echo "alias home='cd /media/sf_Desktop'" >> ~/.bashrc
echo "alias class='cd /media/sf_Desktop/Syncthing/Courses/UPenn'" >> ~/.bashrc

sudo apt-get -y install htop
sudo apt-get -y install git-core
sudo apt-get -y install curl
sudo apt-get -y install vim
sudo apt-get -y install dvipng
sudo apt-get -y install markdown
sudo apt-get -y install pandoc

# install chrome
cd /tmp

# install anaconda
# grab the install script
curl -O https://repo.anaconda.com/archive/Anaconda3-2019.03-Linux-x86_64.sh

# run the install script
bash Anaconda3-2019.03-Linux-x86_64.sh

# source the bashrc to be able to run conda
source ~/.bashrc

# update conda
conda update conda

# update anaconda
conda update anaconda

# install jupyterlab
conda install -c conda-forge jupyterlab

# install jupyter lab extension
## Pre-requisite of nodejs ##
conda install -c conda-forge nodejs

# vim
jupyter labextension install jupyterlab_vim

# git
jupyter labextension install @jupyterlab/git
pip install jupyterlab-git
jupyter serverextension enable --py jupyterlab_git

# toc
jupyter labextension install @jupyterlab/toc

# add the needed repository
sudo add-apt-repository ppa:marutter/rrutter3.5
sudo apt-get install -y r-base
sudo apt-get install -y gdebi-core

# Download and Install RStudio
wget https://download1.rstudio.org/desktop/bionic/amd64/rstudio-1.2.1335-amd64.deb
sudo gdebi rstudio-1.2.1335-amd64.deb
rm rstudio-1.2.1335-amd64.deb

# install some dependencies for devtools
apt-get -y build-dep libcurl4-gnutls-dev
apt-get -y install libcurl4-gnutls-dev

# install some key R-packages
wget https://raw.githubusercontent.com/doug2mac/ubuntu_startup/master/rpackages.R
sudo Rscript rpackages.R

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

# install a light weight desktop xfce4
sudo apt-get -y install xfce4

# install vscode (no longer part of anaconda install)
sudo apt -y install software-properties-common apt-transport-https wget
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt -y install code
