# ensure that our ubuntu instance is up to date
sudo apt-get -y update
sudo apt-get -y upgrade

# install terminator
sudo add-apt-repository ppa:gnome-terminator
sudo apt-get -y update
sudo apt-get -y install terminator

# install htop
sudo apt-get -y install htop

# install the latest r sources
sudo sh -c 'echo "deb https://cloud.r-project.org/bin/linux/ubuntu xenial/" >> /etc/apt/sources.list'
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9
sudo apt-get -y update
sudo apt-get -y upgrade

# install git
sudo apt-get -y install git-core

# install curl
sudo apt-get -y install curl

# install vim
sudo apt-get -y install vim

# install chrome
cd /tmp

# get latest stable build
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
# unpack build
sudo dpkg -i google-chrome-stable_current_amd64.deb

# install sublime text 3
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -

echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

sudo apt-get -y update

sudo apt-get -y install sublime-text

# install anaconda
cd /tmp

# grab the install script
curl -O https://repo.continuum.io/archive/Anaconda3-2018.12-Linux-x86_64.sh

# run the install script
bash Anaconda3-2018.12-Linux-x86_64.sh

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

# Install R + RStudio on Ubuntu 16.04
sudo apt-key adv –keyserver keyserver.ubuntu.com –recv-keys E084DAB9

# Ubuntu 12.04: precise
# Ubuntu 14.04: trusty
# Ubuntu 16.04: xenial
# Basic format of next line deb https://<my.favorite.cran.mirror>/bin/linux/ubuntu <enter your ubuntu version>/
sudo add-apt-repository 'deb https://ftp.ussg.iu.edu/CRAN/bin/linux/ubuntu xenial/'
sudo apt-get -y update
sudo apt-get -y install r-base
sudo apt-get -y install r-base-dev

# install some key R-packages
wget https://raw.githubusercontent.com/doug2mac/ubuntu_startup/master/rpackages.R
sudo Rscript packages.R

# Download and install rstudio-server
sudo apt-get install gdebi-core
wget https://download2.rstudio.org/rstudio-server-1.1.419-amd64.deb
sudo gdebi rstudio-server-1.1.419-amd64.deb

# Download and Install RStudio
sudo apt-get -y install gdebi-core
wget https://download1.rstudio.org/rstudio-xenial-1.1.463-amd64.deb
sudo gdebi rstudio-xenial-1.1.463-amd64.deb
rm rstudio-xenial-1.1.463-amd64.deb

# install shiny server
sudo apt-get -y install gdebi-core
wget https://download3.rstudio.org/ubuntu-12.04/x86_64/shiny-server-1.5.5.872-amd64.deb
sudo gdebi shiny-server-1.5.5.872-amd64.deb

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

# version the old .spacemacs file
# mv .spacemacs .spacemacs.bak

# pull my .spacemacs config file
cd ~
wget https://raw.githubusercontent.com/doug2mac/ubuntu_startup/master/.spacemacs

# install mssql tools
sudo su

curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -

# add microsoft repo
sudo add-apt-repository "$(wget -qO- https://packages.microsoft.com/config/ubuntu/16.04/prod.list)"

# exit super user mode
exit

sudo apt-get -y update
sudo apt-get -y install mssql-tools

# install pdf-latex
sudo apt-get install texlive-latex-base
sudo apt-get install texlive-fonts-recommended
sudo apt-get install texlive-fonts-extra
sudo apt-get install texlive-latex-extra


