#!/bin/sh

cd `dirname $0`
BIN_DIR=`pwd`

kill `cat airflow-webserver-monitor.pid`
while [[ -f "airflow-webserver.pid" ]]; do
    echo "Wait for stopping airflow-webserver..."
    sleep 1
done
echo "Succeed to stop airflow-webserver!"

kill `cat airflow-scheduler.pid`
while [[ -f "airflow-scheduler.pid" ]]; do
    echo "Wait for stopping airflow-scheduler..."
    sleep 1
done
echo "Succeed to stop airflow-scheduler!"

ps -ef | grep 'airflow' | grep 'scheduler' | awk '{print $2}' | xargs kill -9
