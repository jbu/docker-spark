FROM snufkin/spark-base

EXPORT 7077 4040 8080
#CMD ["/spark/sbin/start-master.sh"]
CMD ["java", \
     "-cp ::/spark/conf:/spark/lib/*", \
     "-Dspark.akka.logLifecycleEvents=true", \
     "-Xms512m" ,"-Xmx512m", \
     "org.apache.spark.deploy.master.Master"]