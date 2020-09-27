eval "$(conda shell.bash hook)" # I really have no idea what this does, but it seemed to make it work.
conda create -y -n intro python=3.7 scipy numpy matplotlib pandas jupyter
source activate intro
conda install -y -c conda-forge jupyterlab
