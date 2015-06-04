FROM ruby:2.2

MAINTAINER Alex Salguero <hasumedic@gmail.com>

EXPOSE 8000

RUN mkdir -p /usr/src/app
COPY . /usr/src/app
WORKDIR /usr/src/app

RUN bundle install

CMD ["ruby","src/app.rb"]