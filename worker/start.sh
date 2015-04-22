#!/bin/sh

echo nameserver $KUBE_DNS_SERVICE_HOST >> /etc/resolv.conf

java -cp /spark/conf:/spark/lib/* \
     -Dspark.akka.logLifecycleEvents=true \
     -Xms512m -Xmx512m \
     org.apache.spark.deploy.worker.Worker \
     spark://spark-master:$SPARK_MASTER_SERVICE_PORT
     
     #spark://$SPARK_MASTER_SERVICE_HOST:$SPARK_MASTER_SERVICE_PORT

