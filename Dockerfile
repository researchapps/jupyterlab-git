FROM jupyter/all-spark-notebook

# docker build -t vanessa/jupyterlab-git .
# docker run --rm -p 8888:8888 -p 4040:4040 -e JUPYTER_ENABLE_LAB=yes -v ~:/home/jovyan/work vanessa/jupyterlab-git

RUN jupyter labextension install @jupyterlab/git && \
    pip install --upgrade jupyterlab-git && \
    jupyter serverextension enable --py jupyterlab_git && \
    jupyter lab clean && jupyter lab build
