FROM ruby:2.6.3

RUN apt-get update -qq
RUN apt-get install -y nodejs build-essential apt-utils \
  autoconf libc6-dev automake libtool bison pkg-config \
  zlib1g zlib1g-dev curl \
  postgresql postgresql-client postgresql-contrib libpq-dev \
  openssl libssl-dev libcurl4-openssl-dev \
  libyaml-dev libxml2-dev libxslt1-dev \
  redis-server imagemagick
RUN mkdir /app
WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN gem install bundler
COPY . /app
RUN bundle install --jobs 20 --retry 5
