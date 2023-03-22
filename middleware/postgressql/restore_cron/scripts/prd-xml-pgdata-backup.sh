#!/bin/sh
set -e
exclude_table_data='instrument.instrument_*_xml*'
exclude_celery_data='instrument.django_celery_beat_*'
exclude_cron='public.django_celery_beat_periodictask'

{
    [[ -s $ROOT_DIR/jenkins_excluded_table.dump ]] && mv $ROOT_DIR/jenkins_excluded_table.dump $ROOT_DIR/jenkins_excluded_table.dump.bak
    psql -d $master_db -c "ALTER DATABASE $master_db SET timescaledb.restoring = off";
    pg_dump -Fc --table=$exclude_cron --table=$exclude_table_data --table=$exclude_celery_data $master_db > $ROOT_DIR/jenkins_excluded_table.dump
} || {
    echo "error occured, removing $ROOT_DIR/jenkins_excluded_table.dump"
    rm -rf $ROOT_DIR/jenkins_excluded_table.dump
    exit 1
}