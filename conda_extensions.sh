## Jupyter extensions
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
