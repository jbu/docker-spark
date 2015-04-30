#!/bin/sh

export SPARK_MASTER_PORT=${SPARK_MASTER_SERVICE_PORT:-7077}

/spark/sbin/start-master.sh

tail -F /spark/logs/spark*
