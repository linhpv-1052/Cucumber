FROM ruby

RUN mkdir /app

WORKDIR /app

COPY Gemfile* /app/

RUN bundle

CMD cucumber
