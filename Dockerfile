FROM debian:jessie

RUN apt-get update
RUN apt-get install -y python3 python3-pip git netcat-openbsd

