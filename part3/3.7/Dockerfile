FROM continuumio/miniconda

WORKDIR /app

COPY . /app

RUN conda env create --file environment.yml

RUN apt-get update &&\
	apt-get install -y libvoikko1 voikko-fi python3-libvoikko &&\
	mv /usr/lib/python3/dist-packages/libvoikko.py /opt/conda/envs/voikko/lib/python3.9/site-packages/ &&\
	apt-get purge -y python3-libvoikko &&\
	apt-get -y autoremove &&\
	rm -rf /var/lib/apt/lists/* &&\
	useradd voikko &&\
	chown -R voikko /app

USER voikko

CMD ["conda", "run", "-n", "voikko", "uvicorn", "main:app", "--host", "0.0.0.0"]

EXPOSE 8000
