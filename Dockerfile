FROM debian:jessie

MAINTAINER Eliott BACKER "eliott.backer@gmail.com"

# no question/dialog is asked during apt-get install
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
  apt-get install -y openssh-server && \
	rm -rf /var/lib/apt/lists/* && \
	apt-get clean
  
RUN mkdir -p /var/run/sshd

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
