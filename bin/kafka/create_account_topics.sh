#!/bin/bash

zookeepers="ema-zookeeper01:2181/mes"

./bin/kafka-topics.sh --zookeeper $zookeepers --partitions 1 --replication-factor 3 --topic mes.$1.pmta.rawlog --create  
./bin/kafka-topics.sh --zookeeper $zookeepers --partitions 1 --replication-factor 3 --topic mes.$1.emavmail.rawlog --create  

./bin/kafka-configs.sh --zookeeper ema-zookeeper01:2181/mes --alter --entity-name mes.$1.pmta.rawlog --entity-type topics --add-config retention.ms=604800000
./bin/kafka-configs.sh --zookeeper ema-zookeeper01:2181/mes --alter --entity-name mes.$1.emavmail.rawlog --entity-type topics --add-config retention.ms=604800000
