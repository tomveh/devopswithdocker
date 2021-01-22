FROM ruby:2.6.0

COPY . /app

WORKDIR /app

RUN apt-get update &&\
    apt-get install curl -y &&\
    curl -sL https://deb.nodesource.com/setup_10.x | bash &&\
    apt-get install nodejs -y

RUN gem install bundler &&\
    bundle install &&\
    rails db:migrate

CMD ["rails", "s"]