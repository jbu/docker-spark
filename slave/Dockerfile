FROM snufkin/spark-base

EXPOSE 8081

CMD ["/spark/bin/spark-class", "org.apache.spark.deploy.worker.Worker", "spark://$MASTER_SERVICE_HOST:$SPARK_MASTER_SERVICE_PORT"]
