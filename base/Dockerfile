FROM debian:jessie

RUN apt-get update && apt-get -y install curl

ENV JAVA_HOME /usr/jdk1.8.0_31
ENV SPARK_RELEASE=spark-1.3.0-bin-hadoop2.4

RUN curl \
  --silent \
  --location \
  --retry 3 \
  --header "Cookie: oraclelicense=accept-securebackup-cookie;" \
  "http://download.oracle.com/otn-pub/java/jdk/8u31-b13/jdk-8u31-linux-x64.tar.gz" \
    | gunzip \
    | tar x -C /usr/ \
    && ln -s $JAVA_HOME /usr/java \
    && rm -rf $JAVA_HOME/src.zip $JAVA_HOME/javafx-src.zip $JAVA_HOME/man

ENV PATH ${PATH}:${JAVA_HOME}/bin

RUN curl \
    --silent \
    http://d3kbcqa49mib13.cloudfront.net/$SPARK_RELEASE.tgz  \
    | gunzip \
    | tar x -C / && \
    mv /$SPARK_RELEASE /spark \
    cd /spark/lib && \
    curl \
    --silent \
    -O \
    https://storage.googleapis.com/hadoop-lib/gcs/gcs-connector-latest-hadoop2.jar 
    #&& \
    #echo export SPARK_CLASSPATH=$SPARK_CLASSPATH:/spark/lib/gcs-connector-latest-hadoop2.jar > /spark/conf/spark-env.sh