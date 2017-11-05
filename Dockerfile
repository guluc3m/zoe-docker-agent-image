FROM python:3.6-slim

RUN apt-get update
RUN apt-get install -y netcat-openbsd git inotify-tools

ADD monitor /bin
RUN chmod u+x /bin/monitor

