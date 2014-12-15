# GitBook Server

![](gitbook_and_docker.png)

## Introduction

Gitbook-server helps to run gitbook without installing nodejs or anything.

The [container](https://registry.hub.docker.com/u/tobegit3hub/gitbook-server/) is based on Ubuntu 14.10 and gitbook 1.3.4.

## Usage

Clone the gitbook project in `/home/myname/mybook` or anywhere, then run this command.

```
docker run -d -p 4000:4000 -v /home/myname/mybook:/gitbook tobegit3hub/gitbook-server
```