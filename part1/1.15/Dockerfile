FROM continuumio/miniconda

WORKDIR /app

COPY . /app

RUN conda env create --file environment.yml

RUN apt-get update &&\
    apt-get install libvoikko1 voikko-fi python3-libvoikko -y &&\
    mv /usr/lib/python3/dist-packages/libvoikko.py /opt/conda/envs/voikko/lib/python3.9/site-packages/

# see https://pythonspeed.com/articles/activate-conda-dockerfile/
# and set host to 0.0.0.0 because default 127.0.0.1 does not work
CMD ["conda", "run", "-n", "voikko", "uvicorn", "main:app", "--host", "0.0.0.0"]

EXPOSE 8000