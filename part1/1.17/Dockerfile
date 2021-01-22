FROM continuumio/miniconda

WORKDIR /app

RUN conda update -n base -c defaults conda &&\
    conda create -n ml --yes &&\
    conda install -n ml -c conda-forge jupyterlab numpy pandas matplotlib seaborn --yes &&\
    conda install -n ml -c huggingface transformers --yes &&\
    conda run -n ml pip install datasets
    
ENTRYPOINT ["conda", "run", "-n", "ml", "jupyter", "lab", "--no-browser", "--allow-root", "--ip=*", "--LabApp.token=''"]

EXPOSE 8888