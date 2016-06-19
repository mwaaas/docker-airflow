#!/usr/bin/env bash

# airflow needs a home, ~/airflow is the default,
# but you can lay foundation somewhere else if you prefer
# (optional)
export AIRFLOW_HOME=/usr/src/app

sleep 10
# initialize the database
airflow initdb

sleep 5
# start the web server, default port is 8080
airflow webserver -p 80