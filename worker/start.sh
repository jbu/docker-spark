#!/bin/sh

#echo nameserver $KUBE_DNS_SERVICE_HOST >> /etc/resolv.conf

/spark/sbin/start-slave.sh spark://spark-master:7077

