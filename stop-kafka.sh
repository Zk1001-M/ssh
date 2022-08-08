#!/bin/bash
KAFKA_HOME=/export/server/kafka

for number in {1..3}
do
	host=node${number}.itcast.cn
	/usr/bin/ssh ${host} "source /etc/profile; ${KAFKA_HOME}/bin/kafka-server-stop.sh"
	echo "${host} stoping................................"
done



