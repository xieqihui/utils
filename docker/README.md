## Docker container runtime for machine learning development
The container will start `jupyterlab` in port `8889`<br/>

Python 3.6, Nvidia GPU driver, conda, jupyterlab<br/>
```
docker build -f Dockerfile.ml_gpu_py3 -t xieqihui/ml_dev:gpu_py3
```
Python 2.7, Nvidia GPU dirver, conda, jupyterlab<br/>
```
docker build -f Dockerfile.ml_gpu_py2 -t xieqihui/ml_dev:gpu_py2
```
These images can be used as base image for machine learning projects.
For example, to start a new project `sample`, set the repo structure as:
```
sample
|--- requirements.txt
|--- Dockerfile
|--- docker-compose.yml
|--- src
     |---
```

Where Python packages dependency is specified `requirements.txt`, e.g.
```
tensorflow-gpu==1.9.0
```

`Dockerfile`
```
FROM xieqihui/ml_dev:gpu_py3
WORKDIR /root
COPY requirements.txt /root/requirements.txt
RUN source activate base \
    && pip install -r requirements.txt
RUN rm requirements.txt
CMD jupyter lab --ip=0.0.0.0 --port=8889 --allow-root
```

`docker-compose.yml`
```
version: '2.3'
services:
  python:
    build: .
    image: xieqihui/ml_dev:v1
    container_name: ml_dev
    runtime: nvidia
    ports:
        - "8889:8889"        
        - "8890:8890"        
        - "6006:6006"
        - "2222:2222"
        - "5000:5000"
    stdin_open: true
    tty: true
    volumes:
        - "${HOME}:/root"
```

Then, start the container by
```
docker-compose up
```
