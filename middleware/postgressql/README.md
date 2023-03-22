恢復數據庫結束後，必須跑執行以下腳本，否則`無法寫入數據`
```BASH
  /bin/psql -c 'SELECT timescaledb_post_restore();'
  /bin/psql -c 'ALTER DATABASE $db_name SET timescaledb.restoring = off;'
```

建立只讀帳號給grafana:
```
  CREATE USER grafana_readonly WITH LOGIN PASSWORD 'grafana_readonly' NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE NOREPLICATION VALID UNTIL 'infinity';
  # CONNECT
  GRANT CONNECT ON DATABASE dm_test TO grafana_readonly;
  # USAGE
  GRANT USAGE ON SCHEMA instrument TO grafana_readonly;
  GRANT USAGE ON SCHEMA market_data TO grafana_readonly;
  GRANT USAGE ON SCHEMA public TO grafana_readonly;
  # SELECT
  GRANT SELECT ON ALL TABLES IN SCHEMA instrument TO grafana_readonly;
  GRANT SELECT ON ALL TABLES IN SCHEMA market_data TO grafana_readonly;
  GRANT SELECT ON ALL TABLES IN SCHEMA public TO grafana_readonly;
  # new table in the future automatically
  ALTER DEFAULT PRIVILEGES IN SCHEMA instrument GRANT SELECT ON TABLES TO grafana_readonly;
  ALTER DEFAULT PRIVILEGES IN SCHEMA market_data GRANT SELECT ON TABLES TO grafana_readonly;
  ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT ON TABLES TO grafana_readonly;
```

GRANT USAGE ON SCHEMA quote_data TO algoro;
GRANT SELECT ON ALL TABLES IN SCHEMA quote_data TO algoro;
ALTER DEFAULT PRIVILEGES IN SCHEMA quote_data GRANT SELECT ON TABLES TO algoro;