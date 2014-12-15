# GitBook Server

## Introduction

This [container](https://registry.hub.docker.com/u/tobegit3hub/gitbook-server/) is based on Ubuntu 14.10 and gitbook 1.3.4.

You can run any gitbook locally without installing nodejs or anything.

## Usage

Clone the gitbook project in `/home/myname/mybook` or anywhere, then run this command.

```
docker run -d -v /home/myname/mybook:/gitbook -p 4000:4000 tobegit3hub/gitbook-server
```