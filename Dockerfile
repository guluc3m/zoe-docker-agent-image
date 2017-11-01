FROM python:3.6-slim

RUN apt-get update
RUN apt-get install -y netcat-openbsd git inotify-tools

ADD wait-for-rabbitmq.sh /tmp
RUN chmod u+x /tmp/wait-for-rabbitmq.sh

ADD monitor /bin
RUN chmod u+x /bin/monitor

ENTRYPOINT ["/tmp/wait-for-rabbitmq.sh"]
