#!/usr/bin/env bash

# initialize the database
airflow initdb

# start the web server, default port is 8080
airflow webserver -p 80