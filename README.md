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
$ docker run -v ${PWD}:/local -it terryhorner/bash-ruby:latest bin/bash
bash-4.4#
```

Mounting the current directory into the container at `/local` gives you a quick and easy way to run code with minimal hassle.
