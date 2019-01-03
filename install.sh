# install vim
sudo apt install vim

# install sublime text 3
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -

echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

sudo apt-get update

sudo apt-get install sublime-text

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

# Install R + RStudio on Ubuntu 16.04
sudo apt-key adv –keyserver keyserver.ubuntu.com –recv-keys E084DAB9

# Ubuntu 12.04: precise
# Ubuntu 14.04: trusty
# Ubuntu 16.04: xenial
# Basic format of next line deb https://<my.favorite.cran.mirror>/bin/linux/ubuntu <enter your ubuntu version>/
sudo add-apt-repository 'deb https://ftp.ussg.iu.edu/CRAN/bin/linux/ubuntu xenial/'
sudo apt-get update
sudo apt-get install r-base
sudo apt-get install r-base-dev

# Download and Install RStudio
sudo apt-get install gdebi-core
wget https://download1.rstudio.org/rstudio-1.0.44-amd64.deb
sudo gdebi rstudio-1.0.44-amd64.deb
rm rstudio-1.0.44-amd64.deb

# download and install emacs + spacemacs

# download and install emacs
cd
sudo apt-get install emacs
mv .emacs .emacs.old
mv .emacs.d .emacs.d.old

# clone spacemacs into .emacs.d
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

# version the old .spacemacs file
mv .spacemacs .spacemacs.bak

# pull my .spacemacs config file
wget https://raw.githubusercontent.com/doug2mac/ubuntu_startup/master/.spacemacs
