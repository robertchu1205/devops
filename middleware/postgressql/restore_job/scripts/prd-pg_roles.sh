#!/bin/sh
set -e
PGDATABASE=${DM_TARGET_DB_NAME:='dm_test'}

# CONNECT
psql -U postgres -d $PGDATABASE -c "GRANT CONNECT ON DATABASE dm_dev TO algoro;"
# USAGE
psql -U postgres -d $PGDATABASE -c "GRANT USAGE ON SCHEMA instrument TO algoro;"
psql -U postgres -d $PGDATABASE -c "GRANT USAGE ON SCHEMA market_data TO algoro;"
psql -U postgres -d $PGDATABASE -c "GRANT USAGE ON SCHEMA public TO algoro;"
# SELECT
psql -U postgres -d $PGDATABASE -c "GRANT SELECT ON ALL TABLES IN SCHEMA instrument TO algoro;"
psql -U postgres -d $PGDATABASE -c "GRANT SELECT ON ALL TABLES IN SCHEMA market_data TO algoro;"
psql -U postgres -d $PGDATABASE -c "GRANT SELECT ON ALL TABLES IN SCHEMA public TO algoro;"
# new table in the future automatically
psql -U postgres -d $PGDATABASE -c "ALTER DEFAULT PRIVILEGES IN SCHEMA instrument GRANT SELECT ON TABLES TO algoro;"
psql -U postgres -d $PGDATABASE -c "ALTER DEFAULT PRIVILEGES IN SCHEMA market_data GRANT SELECT ON TABLES TO algoro;"
psql -U postgres -d $PGDATABASE -c "ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT ON TABLES TO algoro;"

echo granted algoro $PGDATABASE