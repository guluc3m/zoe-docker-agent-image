FROM python:3.6-slim

RUN apt-get update
RUN apt-get install -y netcat-openbsd git

ADD wait-for-rabbitmq.sh /tmp
RUN chmod u+x /tmp/wait-for-rabbitmq.sh

ENTRYPOINT ["/tmp/wait-for-rabbitmq.sh"]

