FROM ruby:3.2-rc
RUN apt-get update -qq && apt-get install -y build-essential nodejs sqlite3 libsqlite3-dev
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
