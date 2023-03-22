# external nodeport could not be used by external service

### bookmarks
- [doc](https://strimzi.io/docs/operators/latest/deploying.html#deploying-cluster-operator-helm-chart-str)
- [operator values specs](https://github.com/strimzi/strimzi-kafka-operator/tree/0.27.1/helm-charts/helm3/strimzi-kafka-operator#configuration)
- [kafka cluster](https://strimzi.io/docs/operators/latest/deploying.html#deploying-kafka-cluster-str)
- [components specs](https://strimzi.io/docs/operators/latest/configuring.html#assembly-deployment-configuration-str)

### tips
- quay.io -> quay.mirrors.ustc.edu.cn ( sh aliyun )

### benchmark commands
- bin/kafka-topics.sh --create --topic test --partitions 3 --replication-factor 3 --bootstrap-server colo-preprd-kafka-bootstrap:9092
- bin/kafka-producer-perf-test.sh --topic test --num-records 1000000 --throughput -1 --producer-props bootstrap.servers=colo-preprd-kafka-bootstrap:9092 batch.size=1000 acks=1 linger.ms=100000 buffer.memory=4294967296 request.timeout.ms=300000 --record-size 1000
- bin/kafka-consumer-perf-test.sh --topic test --messages 10000000 --threads 2 --bootstrap-server colo-preprd-kafka-bootstrap:9092 --print-metrics

# mirror cluster to another
- unset JMX_PORT; bin/kafka-mirror-maker.sh --consumer.config /tmp/consumer.properties --producer.config /tmp/producer.properties  --whitelist "."