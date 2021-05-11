FROM ruby:3.0.0

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg |  apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" |  tee /etc/apt/sources.list.d/yarn.list

RUN apt-get -y update
RUN apt-get -y upgrade

RUN apt-get install -y yarn nodejs postgresql

COPY start.sh .
RUN chmod +x start.sh

WORKDIR /blog
COPY ./blog /blog

RUN gem update --system
RUN gem install rails
RUN gem install rails bundler

RUN yarn install
RUN bundle install

# Configure the main process to run when running the image
CMD start.sh