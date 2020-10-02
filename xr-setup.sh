# !/bin/bash
# conda init bash
envname="xrenv"
eval "$(conda shell.bash hook)" # I have no idea what this does.
echo "before calling source: $PATH"
conda remove -y --name $envname --all
conda create -y -n $envname python=3.8 xarray=0.16.1 scipy numpy matplotlib pandas jupyter
source activate $envname
echo "before after source: $PATH"
conda install -y -c conda-forge cartopy=0.18.0
conda install -y -c anaconda scikit-learn=0.22.1
conda install -y -c conda-forge cmocean
conda install -y -c conda-forge eccodes
conda install -y -c conda-forge pynio
conda install -y -c conda-forge nc-time-axis
conda install -y -c conda-forge dask
conda install -y -c conda-forge jupyter_contrib_nbextensions
jupyter nbextensions_configurator enable --user
jupyter contrib nbextension install --user

# conda install sphinx
conda list --explicit > xarray-env.txt
