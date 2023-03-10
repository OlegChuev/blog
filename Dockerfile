FROM ruby:3.1-slim-bullseye as jekyll

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    git \
    && rm -rf /var/lib/apt/lists/*

ADD . $HOME/site

WORKDIR /site

RUN gem install bundler && bundle install

RUN gem update --system && gem install jekyll

EXPOSE 4000
