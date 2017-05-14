# Docker Debian ssh

This image allows to get ssh running on Docker.

## Getting image from a registry
To pull an image from a registry, simply start the container using the following command:

docker pull eliottbacker/debian-ssh

## Getting it running
To run ssh in a background process, simply start the container using the following command:

docker run -d -p 2222:22 --name mysandbox debian-ssh

One user exist in the container: root (superuser) 
To connect to this container as root:

ssh -p 2222 root@localhost

Change 2222 to any local port number of your choice.

Please report any issues with the Docker container to https://github.com/EliottBacker/DockerDebianApache/issues
