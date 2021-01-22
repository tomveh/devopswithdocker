FROM ubuntu

COPY . /app

WORKDIR /app

RUN apt-get update &&\
    apt-get install curl -y &&\
    curl -sL https://deb.nodesource.com/setup_10.x | bash &&\
    apt-get install nodejs -y &&\
    npm install
    
CMD ["npm", "start"]

EXPOSE 8000