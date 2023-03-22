#!/bin/sh
set -e
PGDATABASE=${DM_TARGET_DB_NAME:='dm_test'}
# d='2022-01-09'
d=`date +%Y-%m-%d`
BKP_FILE=$ROOT_DIR/$d/data.dump
#BKP_FILE=/mnt/aliyun-nas/rancher/postgres/jenkins_included_table.dump

echo "Loading into $PGDATABASE"

[[ -s $BKP_FILE ]] || ( echo "file not found $BKP_FILE" >&2; exit 1)

set +e
db_exists=$( psql -lqt | cut -d \| -f 1 | grep -w $PGDATABASE )
set -e

if [[ ! -z "$db_exists" ]]
then
    echo 'disconnecting'

    psql -d postgres -c "SELECT \
        pg_terminate_backend(pid) \
        FROM pg_stat_activity WHERE \
        pid <> pg_backend_pid() \
        AND datname = '$PGDATABASE' ; "
    echo 'destroying'

    psql -d postgres -c "Drop Database $PGDATABASE;"
fi

echo 'restoring'
# psql -U postgres -d postgres -c "Create TABLESPACE xmlspace OWNER django_admin LOCATION '/var/lib/postgresql';"
psql -U postgres -d postgres -c "Create Database $PGDATABASE;"
# psql -c "create extension timescaledb;"
psql -c "ALTER DATABASE $PGDATABASE SET timescaledb.restoring = off;"
psql -c "SELECT timescaledb_pre_restore();"

set +e
pg_restore -v -d $PGDATABASE -Fc "/mnt/timescaledb/django_celery_beat_periodictask_f.dump"
pg_restore -v -d $PGDATABASE -Fc $BKP_FILE

psql -c "SELECT timescaledb_post_restore();"
psql -c "ALTER DATABASE $PGDATABASE SET timescaledb.restoring = off;"

echo restored $BKP_FILE to $PGDATABASE