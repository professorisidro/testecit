#!/bin/bash
PID=$(ps x | grep exemplociet | tail -1 | cut -d" " -f1)
kill -9 $PID
cp ./target/exemplociet-0.0.1-SNAPSHOT.jar /root
nohup java -jar /root/exemplociet-0.0.1-SNAPSHOT.jar > /root/debug_ciet.log & 
