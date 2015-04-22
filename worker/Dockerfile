FROM snufkin/spark-base

EXPOSE 8081

ADD start.sh /
RUN chmod +x /start.sh

ENTRYPOINT ["/start.sh"]
