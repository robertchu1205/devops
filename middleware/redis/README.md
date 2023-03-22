- 資源用量: memory 250MB 左右
- helm -n {namespace} upgrade --install {release-name} --set auth.enabled=false --set architecture=standalone bitnami/redis

### restore data to aliyun redis
- by key
  - https://stackoverflow.com/a/16129052
- by db
  - migrate - move
    - https://stackoverflow.com/questions/37166947/copying-all-keys-in-redis-database-using-migrate