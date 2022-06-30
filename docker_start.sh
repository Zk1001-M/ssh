#!/bin/bash

for i in hadoop oracle hive spark
do
        echo ===========start：$i ===============
        docer start $i 
		
		sleep 10
done
docer ps -a