#!/bin/sh 

HIVE_HOME=/export/server/hive

EXEC_CMD=hiveserver2

## 启动服务的时间
DATE_STR=`/bin/date '+%Y%m%d%H%M%S'`
# 日志文件名称(包含存储路径)
HIVE_LOG=${HIVE_HOME}/logs/${EXEC_CMD}-${DATE_STR}.log

# 创建日志目录
/usr/bin/mkdir -p ${HIVE_HOME}/logs
## 启动服务
/usr/bin/nohup ${HIVE_HOME}/bin/hive --service ${EXEC_CMD} > ${HIVE_LOG} 2>&1 &

