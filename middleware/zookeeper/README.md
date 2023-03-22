helm install
```helm install zookeeper bitnami/zookeeper --set replicaCount=3  --set auth.enabled=false --set allowAnonymousLogin=true -n zookeeper -f values.yaml```