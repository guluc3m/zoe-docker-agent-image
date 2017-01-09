#!/bin/bash 

while ! nc -z rabbitmq 9999
do 
    echo 'Waiting...'
    sleep 2
done

echo '** Starting agent **'

exec "$@"

