#!/bin/sh

export SPARK_MASTER_PORT=${SPARK_MASTER_SERVICE_PORT:-7077}

java -cp /spark/conf:/spark/lib/* \
     -Dspark.akka.logLifecycleEvents=true \
     -Xms512m -Xmx512m \
     org.apache.spark.deploy.master.Master 
#     -h $SPARK_MASTER_SERVICE_HOST
