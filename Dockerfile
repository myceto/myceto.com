FROM ruby:2.3.3-alpine

ADD server /app
WORKDIR /app

RUN bundle --path vendor/bundle

EXPOSE 9292

CMD bundle exec rackup --host 0.0.0.0 --port 9292
