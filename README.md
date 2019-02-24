# Dockerfiles
Dockerfile dumping ground.

## Running a bash container

Pull the latest version from Docker Hub:

```
$ docker pull terryhorner/bash-ruby:latest
latest: Pulling from terryhorner/bash-ruby
Digest: sha256:ed7e2bf268b6d4d442772cb93877cb0a919a810bb33e122beb342722364c93ff
Status: Downloaded newer image for terryhorner/bash-ruby:latest
```

Then run the container and hop into a bash terminal while mounting the current directory to `/local` inside the container:

```
$ docker run -v ${PWD}:/local -it terryhorner/bash-ruby:latest /bin/bash
bash-4.4#
```

Mounting the current directory into the container at `/local` gives you a quick and easy way to run code with minimal hassle.

## Running a bash container with Docker Compose

```
$ make DIR=bash-ruby run
docker-compose -f docker-compose.yaml build --force-rm --pull bash-go
Building bash-go
Step 1/3 : FROM golang:1.11-alpine3.9
1.11-alpine3.9: Pulling from library/golang
Digest: sha256:a6435c88400d0d25955ccdea235d2b2bd72650bbab45e102e4ae31a0359dbfb2
Status: Image is up to date for golang:1.11-alpine3.9
 ---> cb1c8647572c
Step 2/3 : LABEL maintainer "Terry Horner <terrhorn@teket.io>"
 ---> Using cache
 ---> d0c7fed60629
Step 3/3 : RUN apk add --no-cache bash
 ---> Using cache
 ---> ea6f499324f2

Successfully built ea6f499324f2
Successfully tagged terryhorner/bash-go:latest
docker-compose -f docker-compose.yaml run --rm bash-go
Creating network "dockerfiles_default" with the default driver
bash-4.4#
```

## Building a Docker image

```
$ make DIR=bash-ruby build
```

## Building and publishing to Docker Hub

```
$ make DIR=bash-ruby publish
```
