# Alpine DCMTK #

Alpine DCMTK is a lightweight docker container with DCMTK tools based on Alpine Linux.
This container uses an official DCMTK's [mirrow](https://github.com/DCMTK/dcmtk) on github and latest [Alpine docker container](https://hub.docker.com/_/alpine) on Docker Hub.

## Usage ##

docker run -v <host directory>:<container directory> darthunix/alpine-dcmtk <dcmtk tool> <arguments>
