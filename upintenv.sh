# !/bin/bash
envname="upintenv"
eval "$(conda shell.bash hook)" # I have no idea what this does.
echo "before calling source: $PATH"
conda remove -y --name $envname --all
conda create -y -n $envname python=3.8 numpy matplotlib pandas jupyter
source activate $envname
echo "before after source: $PATH"
conda install -y -c conda-forge pint
conda install -y -c conda-forge uncertainties
conda install -y -c conda-forge jupyter_contrib_nbextensions
jupyter nbextensions_configurator enable --user
jupyter contrib nbextension install --user
