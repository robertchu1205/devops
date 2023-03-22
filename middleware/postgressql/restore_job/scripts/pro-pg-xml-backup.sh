#!/bin/sh
# Run on algo-data-esc-1
# 
set -e
export PGHOST='172.31.74.168'
export PGPORT='15432'
master_user=$PGUSER
master_pass=$PGPASSWORD

master_db=${DM_BKP_DB:='dm_test'}
exclude_table_data='instrument.instrument_*_xml*'
exclude_celery_data='instrument.django_celery_beat_*'
exclude_cron='public.django_celery_beat_periodictask'

OUTPUT_DIR=/mnt/rancher/postgres/jenkins_excluded_table_202202-2.dump

{
    psql -c "ALTER DATABASE $master_db SET timescaledb.restoring = off";
    pg_dump -Fc --table=$exclude_cron --table=$exclude_table_data --table=$exclude_celery_data $master_db > $OUTPUT_DIR
} || {
    echo "error occured, removing $OUTPUT_DIR"
    rm -rf $OUTPUT_DIR
    exit 1
}