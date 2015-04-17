FROM snufkin/spark-base

CMD ["/spark/sbin/start-slave.sh spark://$MASTER_SERVICE_HOST:$SPARK_MASTER_SERVICE_PORT"]
ENTRYPOINT ["/spark/bin/spark-class", "org.apache.spark.deploy.worker.Worker", "spark://spark-master:7077"]