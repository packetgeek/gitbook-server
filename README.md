# GitBook Server

![](gitbook_and_docker.png)

## Introduction (why fork?)

This is my fork of [Tobe's](https://github.com/tobegit3hub/gitbook-server) gitbook server Dockerfile.  I've updated the Dockerfile to build a more recent version of gitbook (currently 3.2.2, I think) on top of Ubuntu 16.04.  One of the repairs needed was the creation of a softlink from /usr/bin/nodejs to /usr/bin/node.

Note: the below "docker run" command will not work out-of-the-box because you cannot run "gitbook serve" until after you run "gitbook init".  It's a bit of a chicken/egg issue which I'm working to solve (along with getting a more recent version of gitbook-editor up and running).

## Usage

Clone your gitbook project in `/home/yourname/yourbook` or anywhere, then run this command.

```
docker run -d -p 4000:4000 -v /home/yourname/yourbook:/gitbook tobegit3hub/gitbook-server
```

## SELINUX Error

On Fedora or any Linux computer with SELINUX as your Docker Server: 
If you get run `docker logs container_name` and the log appears like 
```
Press CTRL+C to quit ...

Live reload server started on port: 35729
Starting build ...
EACCES, open '/gitbook/README.md'
```

It is most likely caused by the SELINUX settings restricting the container from accessing the folder. To add a rule to allow the container access to yourbook folder as root run:
 
```
chcon -Rt svirt_sandbox_file_t /home/yourname/yourbook/
```

You should be able to start the container.
Kensel found the answer to this problem [Here] (http://stackoverflow.com/questions/24288616/permission-denied-on-accessing-host-directory-in-docker)
