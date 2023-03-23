### elasticcache
- [import rdb thru s3](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/backups-seeding-redis.html#backups-seeding-redis-upload)


### restore data
- rdb
  - redis-cli SHUTDOWN NOSAVE (restarting sts will delete .rdb)
  - it will restart pod automatically and reload data
- aof
  - put the .aof to dir
  - restart sts and it will reload data

### restore data to aliyun redis
- by key
  - https://stackoverflow.com/a/16129052
- by db
  - migrate - move
    - https://stackoverflow.com/questions/37166947/copying-all-keys-in-redis-database-using-migrate

- redis performance tuning: https://severalnines.com/database-blog/performance-tuning-redis
- 資源用量: memory 250MB 左右
- helm -n {namespace} upgrade --install {release-name} --set auth.enabled=false --set architecture=standalone bitnami/redis