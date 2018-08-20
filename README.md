# Useful Tools to Setup Development Environment for Data Science

## Docker container runtime for machine learning development
The container will start `jupyterlab` in port `8889`<br/>

Python 3.6, Nvidia GPU driver, conda, jupyterlab<br/>
```
cd docker
docker build -f Dockerfile.ml_gpu_py3 -t xieqihui/ml_dev:gpu_py3 .
```
Python 2.7, Nvidia GPU dirver, conda, jupyterlab<br/>
```
cd docker
docker build -f Dockerfile.ml_gpu_py2 -t xieqihui/ml_dev:gpu_py2 .
```
These images can be used as base image for machine learning projects.

[More details on the usage](docker/README.md)

## Vim for Python
Vim is awesome but painful to configure. Here is the script to configure it for Python.
[Reference tutorial](https://realpython.com/vim-and-python-a-match-made-in-heaven/#vim-extensions)
```
cd vim
./vim_setup.sh
```
