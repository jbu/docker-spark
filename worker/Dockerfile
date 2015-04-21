FROM snufkin/spark-base

EXPOSE 8081

#CMD ["echo '${SPARK_MASTER_SERVICE_HOST:-$1} spark-master' >> /etc/hosts && export SPARK_LOCAL_HOSTNAME=$(hostname -i) && /spark/sbin/start-slave.sh 1 spark://spark-master:7077 && tail -F /spark/logs/*"]

CMD ["java", \
     "-cp", "/spark/conf:/spark/lib/spark-assembly-1.3.0-hadoop2.4.0.jar:/spark/lib/datanucleus-core-3.2.10.jar:/spark/lib/datanucleus-rdbms-3.2.9.jar:/spark/lib/datanucleus-api-jdo-3.2.6.jar:/spark/lib/gcs-connector-latest-hadoop2.jar", \
     "-Dspark.akka.logLifecycleEvents=true", \
     "-Xms512m" ,"-Xmx512m", \
     "org.apache.spark.deploy.worker.Worker", \
     "spark://$SPARK_MASTER_SERVICE_HOST:$SPARK_MASTER_SERVICE_PORT"]
