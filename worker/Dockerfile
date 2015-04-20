FROM snufkin/spark-base

EXPOSE 8081

CMD ["echo '${SPARK_MASTER_SERVICE_HOST:-$1} spark-master' >> /etc/hosts && export SPARK_LOCAL_HOSTNAME=$(hostname -i) && /spark/sbin/start-slave.sh 1 spark://spark-master:7077 && tail -F /spark/logs/*"]
