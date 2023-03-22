#!/bin/bash
# /bin/bash dm_test.sh > dm_test.sh.log 2>&1 &
ORI_DBNAME="postgresql://postgres:docker@172.31.74.168:15432/dm_test"
TAR_DBNAME="postgresql://postgres:docker@psql-ha.postgres-operator.svc:5432/dm_test"
DAT=$(date -d 2021-11-04 +%s) # 00:00:00
SECS=$((3600 * 6))  # 2021-11-04 06:00
TRIGGER=$(($DAT + $SECS))
while : ; do
  ahora=$(date +%s)
  if [ $ahora -gt $TRIGGER ];
  then
    echo now
    ## to be ready
    psql --dbname=$ORI_DBNAME -c "ALTER DATABASE dm_test SET timescaledb.restoring = off" # 允许备份
    psql --dbname=$ORI_DBNAME -c "SELECT timescaledb_pre_restore();"
    ## schema 
    pg_dump -Fc -s -v --dbname=$ORI_DBNAME > dm_test_schema.dump
    pg_restore -v --dbname=$TAR_DBNAME -j 8 -Fc dm_test_schema.dump
    ## role
    pg_dumpall -v -r --dbname=$ORI_DBNAME > dm_test-roles.sql
    psql --dbname=$TAR_DBNAME < dm_test-roles.sql
    ## dump data by schema 
    # pg_dump --dbname=$ORI_DBNAME -j 8 -Fd -f newout.dir
    pg_dump -Fc --schema=instrument --table='instrument.django_celery_beat_*' --table='instrument.instrument_*_xml*' --dbname=$ORI_DBNAME > instrument_xml.dump
    pg_dump -Fc --schema=instrument --dbname=$ORI_DBNAME > instrument.dump
    pg_dump -Fc --schema=market_data --dbname=$ORI_DBNAME > market_data.dump
    pg_dump -Fc --schema=audit --dbname=$ORI_DBNAME > audit.dump
    pg_dump -Fc --schema=django --dbname=$ORI_DBNAME > django.dump
    pg_dump -Fc --schema=public --dbname=$ORI_DBNAME > public.dump
    pg_dump -Fc --schema=timescaledb_information --dbname=$ORI_DBNAME > timescaledb_information.dump
    pg_dump -Fc --schema=_timescaledb_cache --dbname=$ORI_DBNAME > timescaledb_cache.dump
    pg_dump -Fc --schema=_timescaledb_catalog --dbname=$ORI_DBNAME > timescaledb_catalog.dump
    pg_dump -Fc --schema=_timescaledb_config --dbname=$ORI_DBNAME > timescaledb_config.dump
    pg_dump -Fc --schema=_timescaledb_internal --dbname=$ORI_DBNAME > timescaledb_internal.dump
    echo dump done
    ## restore data by schema
    # pg_restore --dbname=$TAR_DBNAME -j 8 --format=d -C newout.dir/
    pg_restore -v --dbname=$TAR_DBNAME -j 8 -Fc instrument_xml.dump
    pg_restore -v --dbname=$TAR_DBNAME -j 8 -Fc instrument.dump
    pg_restore -v --dbname=$TAR_DBNAME -j 8 -Fc market_data.dump
    pg_restore -v --dbname=$TAR_DBNAME -j 8 -Fc audit.dump
    pg_restore -v --dbname=$TAR_DBNAME -j 8 -Fc django.dump
    pg_restore -v --dbname=$TAR_DBNAME -j 8 -Fc public.dump
    pg_restore -v --dbname=$TAR_DBNAME -j 8 -Fc timescaledb_information.dump
    pg_restore -v --dbname=$TAR_DBNAME -j 8 -Fc timescaledb_cache.dump
    pg_restore -v --dbname=$TAR_DBNAME -j 8 -Fc timescaledb_catalog.dump
    pg_restore -v --dbname=$TAR_DBNAME -j 8 -Fc timescaledb_config.dump
    pg_restore -v --dbname=$TAR_DBNAME -j 8 -Fc timescaledb_internal.dump
    psql --dbname=$TAR_DBNAME -c "SELECT timescaledb_post_restore();"
    psql --dbname=$TAR_DBNAME -c "ALTER DATABASE dm_test SET timescaledb.restoring = off;" # 允许备份
    echo restore done
    break
  else
    echo not yet
    sleep 300s
  fi
done
