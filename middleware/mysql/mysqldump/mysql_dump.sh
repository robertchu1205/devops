#!/bin/bash
# /bin/bash mysql_dump.sh > mysql_dump.sh.log 2>&1 &
while : ; do
  midnight=$(date -d 2021-10-16 +%s) # 00:00:00
  ahora=$(date +%s)
  if [ $ahora -gt $midnight ];
  then
    echo now
    mysqldump -h 192.168.8.187 --column-statistics=0 --set-gtid-purged=OFF --skip-lock-tables --single-transaction -P 3307 -u root -pAqumon2050@ --databases algo_db kafka_manager kowloon mock-broker my2 pms-backend pms-backend-python v32-backend v32-backend-staging v32-backend-test xxl_job > dumped.tmp.sql
    echo dump done
    mysql -h 192.168.8.41 -P 31493 -u root -pAqumon2050@ < dumped.tmp.sql
    echo insert done
    break
  else
    echo not yet
    sleep 300s
  fi
done