# GitBook Server

## Introduction

The [container](https://registry.hub.docker.com/u/tobegit3hub/gitbook-server/) is based on Ubuntu 14.10 and latest gitbook.

You can run any gitbook locally without install nodejs or anything.

## Usage

Clone the gitbook project in `/home/myname/mybook` or anywhere, then run this command.

```
docker run -d -v /home/myname/mybook:/gitbook --net=host tobegit3hub/gitbook-server
```