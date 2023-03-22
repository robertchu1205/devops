#!/bin/sh
set -e
d=`TZ=Asia/Shanghai date +%Y-%m-%d`
OUTPUT_DIR=$ROOT_DIR/$d
exclude_table_data='instrument.instrument_*_xml*'
exclude_celery_data='instrument.django_celery_beat_*'
exclude_cron='public.django_celery_beat_periodictask'

[[ -d $OUTPUT_DIR  ]] && rm -rf $OUTPUT_DIR
[[ -d $OUTPUT_DIR  ]] || mkdir -p $OUTPUT_DIR

echo dump data to $OUTPUT_DIR
echo pg_dump -Fc --exclude-table-data=$exclude_cron --exclude-table-data=$exclude_table_data --exclude-table-data=$exclude_celery_data $master_db

{
    psql -d $master_db -c "ALTER DATABASE $master_db SET timescaledb.restoring = off";
    pg_dump -Fc --exclude-table-data=$exclude_cron --exclude-table-data=$exclude_table_data --exclude-table-data=$exclude_celery_data $master_db > $OUTPUT_DIR/data.dump
} || {
    echo "error occured, removing $OUTPUT_DIR"
    rm -rf $OUTPUT_DIR
    exit 1
}

root=$ROOT_DIR
#delete from common directory/ recycle old log
    j=0
    for file in `ls -t $root`
    do
      if [ $j -ge 3 ]; then                  #define how many versions we want to keep
        echo removing $root/$file
        rm -rf $root/$file
      fi
      ((j=$j+1))
    done

# import_db() {
#     psql -c "create database dm_dev;"
#     export PGDATABASE=dm_dev
#     psql -c "CREATE EXTENSION timescaledb;"
#     psql -c "SELECT timescaledb_pre_restore();"
#     pg_restore -Fc -d dm_dev somefile
#     psql -c "SELECT timescaledb_post_restore();"

# }