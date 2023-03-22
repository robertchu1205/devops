#!/bin/sh
# set -e
export PGHOST='dm-prd-timescaledb-only-one.timescaledb.svc.cluster.local'
export PGPORT='6432'

dev_db=${DM_TARGET_DB_NAME:='dm_test'}
BKP_FILE=/mnt/rancher/postgres/jenkins_excluded_table_202202.dump

echo "Loading into $dev_db"

[[ -s $BKP_FILE ]] || ( echo "file not found $BKP_FILE" >&2; exit 1)

echo 'restoring'
export PGDATABASE=$dev_db
psql -c "ALTER DATABASE $dev_db SET timescaledb.restoring = off;"
psql -c "SELECT timescaledb_pre_restore();"
# pg_restore -v -d $dev_db '--table=public.django_celery_beat_periodictask' '--table=instrument.instrument_*_xml*' '--table=instrument.django_celery_beat_*' -Fc -e $BKP_FILE
pg_restore -v -d $dev_db -Fc $BKP_FILE

psql -c "SELECT timescaledb_post_restore();"
psql -c "ALTER DATABASE $dev_db SET timescaledb.restoring = off;"

echo restored $BKP_FILE to $dev_db