FROM ruby:2.4

RUN mkdir /app

WORKDIR /app

COPY Gemfile* /app/

RUN bundle

CMD cucumber
