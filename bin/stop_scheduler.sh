#!/usr/bin/env bash

cd `dirname $0`
BIN_DIR=`pwd`

kill `cat airflow-scheduler.pid`
while [[ -f "airflow-scheduler.pid" ]]; do
    echo "Wait for stopping airflow-scheduler..."
    sleep 1
done
echo "Succeed to stop airflow-scheduler!"
