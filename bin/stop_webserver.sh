#!/usr/bin/env bash

cd `dirname $0`
BIN_DIR=`pwd`

kill `cat airflow-webserver-monitor.pid`
while [[ -f "airflow-webserver.pid" ]]; do
    echo "Wait for stopping airflow-webserver..."
    sleep 1
done
echo "Succeed to stop airflow-webserver!"
