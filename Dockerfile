FROM ruby:2.7.4
RUN apt-get update -qq && apt-get install -y build-essential nodejs \
  && wget https://github.com/yarnpkg/yarn/releases/download/v1.22.15/yarn_1.22.15_all.deb \
  && dpkg -i yarn_1.22.15_all.deb
RUN mkdir /app
WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install
COPY . /app
