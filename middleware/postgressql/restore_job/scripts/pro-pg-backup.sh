#!/bin/sh
set -e
export PGHOST='dm-master.timescaledb.svc.cluster.local'
export PGPORT='5432'
# PGEXEROOT='/bin'

dev_db=${DM_TARGET_DB_NAME:='dm_test'}
# d='2022-01-09'
d=`date +%Y-%m-%d`
ROOT_DIR='/mnt/pg_backup/datamaster/logical'
BKP_FILE=$ROOT_DIR/$d/data.dump
#BKP_FILE=/mnt/aliyun-nas/rancher/postgres/jenkins_included_table.dump

echo "Loading into $dev_db"

[[ -s $BKP_FILE ]] || ( echo "file not found $BKP_FILE" >&2; exit 1)


set +e
db_exists=$( psql -lqt | cut -d \| -f 1 | grep -w $dev_db )
set -e

if [[ ! -z "$db_exists" ]]
then
    echo 'disconnecting'

    psql -d postgres -c "SELECT \
        pg_terminate_backend(pid) \
        FROM pg_stat_activity WHERE \
        pid <> pg_backend_pid() \
        AND datname = '$dev_db' ; "
    echo 'destroying'

    psql -d postgres -c "Drop Database $dev_db;"
fi

echo 'restoring'
# psql -U postgres -d postgres -c "Create TABLESPACE xmlspace OWNER django_admin LOCATION '/var/lib/postgresql';"
psql -U postgres -d postgres -c "Create Database $dev_db;"
export PGDATABASE=$dev_db
# psql -c "create extension timescaledb;"
psql -c "ALTER DATABASE $dev_db SET timescaledb.restoring = off;"
psql -c "SELECT timescaledb_pre_restore();"
pg_restore -v -d $dev_db -Fc $BKP_FILE

psql -c "SELECT timescaledb_post_restore();"
psql -c "ALTER DATABASE $dev_db SET timescaledb.restoring = off;"

echo restored $BKP_FILE to $dev_db