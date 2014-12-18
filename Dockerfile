FROM ubuntu:14.10
MAINTAINER tobe tobeg3oogle@gmail.com

RUN apt-get -y update

# Install gitbook
RUN apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup | bash - && \
    apt-get install -y nodejs && \
    npm install gitbook@1.3.4 -g

RUN mkdir /gitbook
WORKDIR /gitbook

EXPOSE 4000

CMD ["gitbook", "serve", "/gitbook"]