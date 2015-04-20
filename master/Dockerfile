FROM snufkin/spark-base

EXPORT 7077 4040 8080
CMD [" export SPARK_MASTER_PORT=${SPARK_MASTER_SERVICE_PORT:-7077} && /spark/sbin/start-master.sh && tail -F /spark/logs/*""]

#CMD ["java", \
#     "-cp", "/spark/conf:/spark/lib/spark-assembly-1.3.0-hadoop2.4.0.jar:/spark/lib/datanucleus-core-3.2.10.jar:/spark/lib/datanucleus-rdbms-3.2.9.jar:/spark/lib/datanucleus-api-jdo-3.2.6.jar:/spark/lib/gcs-connector-latest-hadoop2.jar", \
#     "-Dspark.akka.logLifecycleEvents=true", \
#     "-Xms512m" ,"-Xmx512m", \
#     "org.apache.spark.deploy.master.Master", \
#     "-h", "$SPARK_MASTER_SERVICE_HOST"]