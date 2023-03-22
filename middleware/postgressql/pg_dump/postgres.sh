#!/bin/bash
# /bin/bash postgres.sh > postgres.sh.log 2>&1 &
ORI_DBNAME="postgresql://postgres:docker@172.31.74.168:15432/postgres"
TAR_DBNAME="postgresql://postgres:docker@psql-ha.postgres-operator.svc:5432/postgres"
UTC_ONEDAYAGO="2021-10-23"
while : ; do
  midnight=$(date -d ${UTC_ONEDAYAGO} +%s) # 00:00:00
  ahora=$(date +%s)
  if [ $ahora -gt $midnight ];
  then
    echo now
    pg_dumpall -v -r --dbname=$ORI_DBNAME > roles.sql
    pg_dump --dbname=$ORI_DBNAME --superuser=postgres --disable-triggers --create --no-owner -Fc > postgres.sql
    echo dump done
    # pg_restore -n public --clean --no-tablespaces --superuser=postgres --dbname=$TAR_DBNAME -1 postgres.sql
    pg_restore -v -j 8 --dbname=$TAR_DBNAME postgres.sql
    psql --dbname=$TAR_DBNAME < roles.sql
    echo insert done
    break
  else
    echo not yet
    sleep 300s
  fi
done
