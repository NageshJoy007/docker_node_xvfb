# docker_node_xvfb

Dockerfile for 'node xvfb chrome'

<img src ="https://cdn.thenewstack.io/media/2014/04/homepage-docker-logo.png" height = "110">

### What is Docker ?

[Docker](https://www.docker.com/) is a tool designed to make it easier to create, deploy, and run applications by using containers. Containers allow a developer to package up an application with all of the parts it needs, such as libraries and other dependencies, and ship it all out as one package. By doing so, thanks to the container, the developer can rest assured that the application will run on any other Linux machine regardless of any customized settings that machine might have that could differ from the machine used for writing and testing the code.

In a way, Docker is a bit like a virtual machine. But unlike a virtual machine, rather than creating a whole virtual operating system, Docker allows applications to use the same Linux kernel as the system that they're running on and only requires applications be shipped with things not already running on the host computer. This gives a significant performance boost and reduces the size of the application.

### How to build your own docker container and run tests inside it ?

- Clone this repo

- Copy and add the Dockerfile to your project

- Run below commands to build your image then run your app or tests inside the container

  `docker build . -t docker_node_xvfb`

  `docker run -t -v $PWD:/usr/src -w /usr/src  docker_node_xvfb /bin/bash -c "<commands to run your tests>"`


