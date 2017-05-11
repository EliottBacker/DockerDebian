FROM debian:latest

MAINTAINER Eliott BACKER "eliott.bakcer@gmail.com"

RUN apt-get update && \\
  apt-get install -y openssh-server && \
	rm -rf /var/lib/apt/lists/* && \
	apt-get clean
  
RUN mkdir -p /var/run/sshd

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
