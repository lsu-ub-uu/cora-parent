#!/bin/sh

DEST="/home/one/epc-apps"

cd /home/one/fitnesse
rm -vfR FitNesseRoot src target
unzip -o $DEST/therest-fitnesse.zip

mvn clean package

nohup /usr/lib/jvm/java-8-oracle/bin/java -jar fitnesse-standalone.jar -p 8090 -o -a password.txt >>nohup.out 2>&1 &
