#!/bin/bash

for i in node1.itcast.cn node2.itcast.cn node3.itcast.cn
do
        echo ====================== $i ====================
        ssh $i 'source /etc/profile; jps'
done
