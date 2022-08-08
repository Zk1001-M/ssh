#!/bin/bash
KAFKA_HOME=/export/server/kafka

for number in {1..3}
do
        host=node${number}.itcast.cn
        /usr/bin/ssh ${host} "source /etc/profile; ${KAFKA_HOME}/bin/kafka-server-start.sh -daemon ${KAFKA_HOME}/config/server.properties"
        echo "${host} starting..............................."
done