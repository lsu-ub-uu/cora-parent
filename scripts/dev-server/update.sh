#!/bin/bash
~/scripts/fitnesse_stop.sh
~/tomcat_stop
~/scripts/download.sh
~/scripts/deploy.sh
~/tomcat_start
~/scripts/fitnesse_start.sh
