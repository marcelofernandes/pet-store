#!/bin/bash

java -jar /usr/local/lib/movies-battle/movies-battle-0.0.1-SNAPSHOT.jar &
filebeat setup
filebeat -e
