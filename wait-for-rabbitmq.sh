#!/bin/bash 

while ! nc -z rabbitmq 15672
do 
    echo 'Waiting...'
    sleep 2
done

echo '** Starting agent **'

exec "$@"

