# core packages
sudo apt-get -y install htop
sudo apt-get -y install git-core
sudo apt-get -y install curl
sudo apt-get -y install vim
sudo apt-get -y install dvipng
sudo apt-get -y install markdown
sudo apt-get -y install pandoc
sudo apt-get -y install unoconv
sudo apt-get -y install hspell
sudo apt-get -y install ispell

# for fonts
sudo apt -y install xfonts-utils

# install some dependencies for devtools
sudo apt-get -y build-dep libcurl4-gnutls-dev
sudo apt-get -y install libcurl4-gnutls-dev
sudo apt-get install -y gdebi-core

# packages for R
sudo apt-get -y install build-essential libcurl4-gnutls-dev libxml2-dev libssl-dev

# make a downloads folder
mkdir Downloads
cd Downloads
wget https://repo.anaconda.com/archive/Anaconda3-2019.07-Linux-x86_64.sh

# run the install script
bash Anaconda3-2019.07-Linux-x86_64.sh

# source the bashrc to be able to run conda
source ~/.bashrc

# add the needed repository
sudo add-apt-repository ppa:marutter/rrutter3.5
sudo apt-get install -y r-base
sudo apt-get install -y gdebi-core

# download and install emacs + spacemacs

# download and install emacs
sudo add-apt-repository ppa:kelleyk/emacs

# clone the spacemacs repo
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

# use the develop branch instead of the master branch
cd ~/.emacs.d
git checkout -b develop origin/develop

# pull my .spacemacs config file
cd ~
wget https://raw.githubusercontent.com/doug2mac/wsl/master/.spacemacs

# install pdf-latex
sudo apt-get -y install texlive-latex-base
sudo apt-get -y install texlive-fonts-recommended
sudo apt-get -y install texlive-fonts-extra

# set-up powerline fonts
pip install powerline-shell

## BASHRC ###
# version the old
mv .bashrc .bak_bashrc

# grab my .bashrc file
wget https://raw.githubusercontent.com/doug2mac/wsl/master/.bashrc

# source for changes
source ~/.bashrc

# download
git clone https://github.com/powerline/fonts

# install fonts
mkfontscale /mnt/c/Users/DougMacDonald/fonts
mkfontscale -b -s -l /mnt/c/Users/DougMacDonald/fonts
 
# install sqlserver odbc and drivers
sudo su 
curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -

#Ubuntu 18.04
curl https://packages.microsoft.com/config/ubuntu/18.04/prod.list > /etc/apt/sources.list.d/mssql-release.list

#Ubuntu 18.10
# curl https://packages.microsoft.com/config/ubuntu/18.10/prod.list > /etc/apt/sources.list.d/mssql-release.list
 
exit
sudo apt-get update
sudo ACCEPT_EULA=Y apt-get install msodbcsql17
# optional: for bcp and sqlcmd
sudo ACCEPT_EULA=Y apt-get install mssql-tools
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bash_profile
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc
source ~/.bashrc
# optional: for unixODBC development headers
sudo apt-get install unixodbc-dev

# install mysql
sudo apt install mysql-server
sudo mysql_secure_installation

# install airflow
pip install 'apache-airflow[all]'
