FROM ruby:2.2.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /myapp
WORKDIR /myapp
ADD ./rails/Gemfile /myapp/Gemfile
ADD ./rails/Gemfile.lock /myapp/Gemfile.lock
RUN bundle install --jobs 4
ADD ./rails/. /myapp
