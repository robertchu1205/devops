- https://github.com/Yolean/kubernetes-kafka/tree/v6.0.4
- How to test deployed kafka
  1. run test client
  ```
    apiVersion: v1
    kind: Pod
    metadata:
      name: testclient
      namespace: kafka
    spec:
      containers:
      - name: kafka
        image: solsson/kafka:0.11.0.0
        command:
          - sh
          - -c
          - "exec tail -f /dev/null"
  ```
  2. create & list test topic
  ```bash
    # to create
    kubectl -n kafka exec -ti testclient -- ./bin/kafka-topics.sh --zookeeper zookeeper:2181 --topic messages --create --partitions 1 --replication-factor 1
    # to list
    kubectl -n kafka exec -ti testclient -- ./bin/kafka-topics.sh --zookeeper zookeeper:2181 --list
  ```
  3. chatbot simulation
  ```bash
    # client
    kubectl -n kafka exec -ti testclient -- ./bin/kafka-console-consumer.sh --bootstrap-server bootstrap:9092 --topic messages --from-beginning
    # server
    kubectl -n kafka exec -ti testclient -- ./bin/kafka-console-producer.sh --broker-list bootstrap:9092 --topic messages
  ```