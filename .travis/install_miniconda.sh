#!/usr/bin/env bash

# Adopted from http://conda.pydata.org/docs/travis.html
sudo apt-get update
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh;
bash miniconda.sh -b -p $HOME/miniconda
export PATH="$HOME/miniconda/bin:$PATH"
hash -r
conda config --set always_yes yes --set changeps1 no
conda update -q conda
# Useful for debugging any issues with conda
conda info -a
