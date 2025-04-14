# Dockerized version of mxcheck

As I like executing unknown scripts inside Docker containers, this repository is a simple version of https://github.com/steffenfritz/mxcheck inside a Docker container.

## Usage

- First create the local Docker image with `./build-image.sh`
- Then use mxcheck within the image with `./check-mx.sh [domain]`