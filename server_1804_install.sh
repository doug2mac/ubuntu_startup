# this is an install script for an Ubuntu 18.04 Server
# the framework is several docker containers for various applications
# with some key editing software for troubleshooting
## Editing Software ##
# 1. Sublime Text 3
# 2. Emacs (with Spacemacs config)
# 3. Vim
## Applications ##
# 1. Jupyter Lab
# 2. Rstudio-Server
# 3. Shiny-Server

# install our new terminal terminator
sudo add-apt-repository ppa:gnome-terminator
sudo apt-get update
sudo apt-get install terminator
