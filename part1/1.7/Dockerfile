FROM ubuntu:16.04

COPY script.sh .
RUN chmod 777 script.sh

RUN apt-get update && apt-get install curl --yes

CMD ["/bin/bash", "script.sh"]
