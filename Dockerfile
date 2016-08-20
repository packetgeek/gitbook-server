FROM ubuntu:16.04
MAINTAINER packetgeek joatblog@gmail.com

# adapted from https://github.com/tobegit3hub/gitbook-server
# installs a more recent version of gitbook

RUN apt-get update && apt-get upgrade -y

# Install dependencies
RUN apt-get install -y curl git calibre nodejs npm bash
RUN curl -sL https://deb.nodesource.com/setup | bash -
RUN npm install -g gitbook-cli
RUN ln -s /usr/bin/nodejs /usr/bin/node

# Install latest version
RUN gitbook install 2.2.0

RUN mkdir /gitbook
WORKDIR /gitbook

EXPOSE 4000

CMD ["gitbook", "serve", "/gitbook"]
