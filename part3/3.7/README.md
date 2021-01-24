This is a slightly optimized version of the voikko image from exercise 1.15 (see https://github.com/tomveh/devopswithdocker/tree/master/part1/1.15).

In this version /var/lib/apt/lists has been removed and the container is executed without root privileges. Also, python3-libvoikko and its dependencies are removed after it is no longer needed.

Old image size: 827MB
New image size: 786MB

This image could probably be further improved by using alpine base image but python dependencies do not seem to behave nicely with that (https://pythonspeed.com/articles/alpine-docker-python/).

----------------

build:

`docker build -t voikko .`

run:

`docker run -p 8000:8000 voikko`

and query 

localhost:8000/analyze/{word}

to analyze a single word

