FROM ubuntu:14.10
MAINTAINER tobe tobeg3oogle@gmail.com

RUN apt-get -y update

# Install gitbook
RUN apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup | bash - && \
    apt-get install -y nodejs && \
    npm install gitbook@1.3.4 -g

# Support gitbook pdf
RUN apt-get install -y calibre

RUN mkdir /gitbook
WORKDIR /gitbook

CMD ["gitbook", "serve", "/gitbook"]