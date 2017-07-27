#!/bin/bash

zookeepers="ema-zookeeper01:2181/mes"

./bin/kafka-topics.sh --zookeeper $zookeepers --partitions 32 --replication-factor 3 --topic mes.pmta.rawlog --create  
./bin/kafka-topics.sh --zookeeper $zookeepers --partitions 32 --replication-factor 3 --topic mes.pmta.rawlog.error --create  

./bin/kafka-topics.sh --zookeeper $zookeepers --partitions 32 --replication-factor 3 --topic mes.spamcomplaint.rawlog --create  
./bin/kafka-topics.sh --zookeeper $zookeepers --partitions 32 --replication-factor 3 --topic mes.spamcomplaint.rawlog.error --create  

./bin/kafka-topics.sh --zookeeper $zookeepers --partitions 3 --replication-factor 3 --topic mes.e3us.pmta.rawlog --create  
./bin/kafka-topics.sh --zookeeper $zookeepers --partitions 3 --replication-factor 3 --topic mes.e3us.spamcomplaint.rawlog --create  

./bin/kafka-topics.sh --zookeeper $zookeepers --partitions 3 --replication-factor 3 --topic mes.e3eu.pmta.rawlog --create  
./bin/kafka-topics.sh --zookeeper $zookeepers --partitions 3 --replication-factor 3 --topic mes.e3eu.spamcomplaint.rawlog --create  

./bin/kafka-topics.sh --zookeeper $zookeepers --partitions 3 --replication-factor 3 --topic mes.default.pmta.rawlog --create  
./bin/kafka-topics.sh --zookeeper $zookeepers --partitions 3 --replication-factor 3 --topic mes.default.spamcomplaint.rawlog --create  

./bin/kafka-topics.sh --zookeeper $zookeepers --partitions 3 --replication-factor 3 --topic mes.e3qa1.pmta.rawlog --create  
./bin/kafka-topics.sh --zookeeper $zookeepers --partitions 3 --replication-factor 3 --topic mes.e3qa1.spamcomplaint.rawlog --create  

./bin/kafka-topics.sh --zookeeper $zookeepers --partitions 3 --replication-factor 3 --topic mes.e3qa2.pmta.rawlog --create  
./bin/kafka-topics.sh --zookeeper $zookeepers --partitions 3 --replication-factor 3 --topic mes.e3qa2.spamcomplaint.rawlog --create  

./bin/kafka-topics.sh --zookeeper $zookeepers --partitions 3 --replication-factor 3 --topic mes.e3qa3.pmta.rawlog --create  
./bin/kafka-topics.sh --zookeeper $zookeepers --partitions 3 --replication-factor 3 --topic mes.e3qa3.spamcomplaint.rawlog --create  

