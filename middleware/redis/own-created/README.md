redis performance tuning: https://severalnines.com/database-blog/performance-tuning-redis

### restore data
- rdb
  - redis-cli SHUTDOWN NOSAVE (restarting sts will delete .rdb)
  - it will restart pod automatically and reload data
- aof
  - put the .aof to dir
  - restart sts and it will reload data