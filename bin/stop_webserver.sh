#!/usr/bin/env bash

cd `dirname $0`
BIN_DIR=`pwd`
PID_FILE="airflow-webserver-monitor.pid"

if [[ ! -f "${PID_FILE}" || -z `pgrep -F "${PID_FILE}"` ]]; then
    echo "Can not find the process of airflow-webserver!"
    exit 0
fi

kill `cat "${PID_FILE}"`
sleep 1
while [[ -f "${PID_FILE}" && -n `pgrep -F "${PID_FILE}"` ]]; do
    echo "Wait for stopping airflow-webserver..."
    sleep 5
done
echo "Succeed to stop airflow-webserver!"
