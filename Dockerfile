# Ubuntu 18.04 included below
FROM tensorflow/tensorflow:2.1.0-py3-jupyter

RUN apt-get update
RUN apt-get -y install cmake 
RUN apt-get install -y libsm6 libxext6 libxrender-dev

RUN pip install opencv-python
RUN pip install sklearn scipy tqdm
RUN pip install jupyterlab
RUN pip install matplotlib

# expose ports for jupyter notebooks and tensorboard
EXPOSE 8888
EXPOSE 6006

RUN mkdir /project_template
WORKDIR /project_template

# copy the current dir
COPY . .

# install the requirements.txt packages
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# install the package
RUN pip install -e .

# add some jupyter configurations
RUN jupyter notebook --generate-config
RUN echo "c.NotebookApp.ip = '0.0.0.0'" >> ~/.jupyter/jupyter_notebook_config.py
RUN echo "c.NotebookApp.allow_root = True" >> ~/.jupyter/jupyter_notebook_config.py
RUN echo "c.NotebookApp.open_browser = False" >> ~/.jupyter/jupyter_notebook_config.py


CMD ["/bin/bash"]
