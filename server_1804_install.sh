# this is an install script for an Ubuntu 18.04 Server
# the framework is several docker containers for various applications
# with some key editing software for troubleshooting
## Editing Software ##
# 1. Vim
# 2. Emacs + Spacemacs
## Applications ##
# 1. Jupyter Lab
# 2. Rstudio-Server
# 3. Shiny-Server

# ensure that our ubuntu instance is up to date
sudo apt-get update
sudo apt-get upgrade

# install our new terminal terminator
sudo add-apt-repository ppa:gnome-terminator
sudo apt-get update
sudo apt-get install terminator

# install git
sudo apt-get install git-core

# install curl
sudo apt-get install curl

# install vim
sudo apt install vim

# download and install emacs
sudo add-apt-repository ppa:kelleyk/emacs

sudo apt update

sudo apt install emacs25

# remove the included version of org-mode in spacemacs since it breaks spacemacs
sudo rm -rf /usr/share/emacs/25.3/lisp/org/*

# clone spacemacs into .emacs.d
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

# remove the included version of org-mode in spacemacs since it breaks spacemacs
sudo rm -rf /usr/share/emacs/25.3/lisp/org/*

# clone spacemacs into .emacs.d
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

# use the develop branch instead of the master branch
cd ~/.emacs.d
git checkout -b develop origin/develop

### DOCKER ###
# install pre-requisites
sudo apt install apt-transport-https ca-certificates curl software-properties-common

# add the GPG key for the official Docker respository to your system
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add the Docker repository to APT sources:
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

# update the package database with the Docker packages from the newly added repo
sudo apt update

# Make sure you are about to install from the Docker repo instead of the default Ubuntu repo:
apt-cache policy docker-ce

# Install docker
sudo apt install docker-ce


